package servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import dto.PageDto;
import service.BoardCategoryService;
import service.BoardCategoryServiceImpl;
import service.BoardService;
import service.BoardServiceImpl;

@WebServlet("/admin/board")
public class Board extends HttpServlet{
	private BoardService service = new BoardServiceImpl();
	private BoardCategoryService categoryService = new BoardCategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Criteria cri = new Criteria(req);
		req.setAttribute("boards", service.list(cri));
		req.setAttribute("pageDto", new PageDto(cri, service.count(cri)));
		req.setAttribute("cname", categoryService.findBy(cri.getCategory()).getCname());
		req.getRequestDispatcher("/WEB-INF/jsp/admin/board.jsp").forward(req, resp);
	}
	
}
