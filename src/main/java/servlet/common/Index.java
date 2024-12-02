package servlet.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import service.BoardCategoryService;
import service.BoardCategoryServiceImpl;
import service.BoardClassService;
import service.BoardClassServiceImpl;
import service.BoardService;
import service.BoardServiceImpl;

@WebServlet("/index")
public class Index extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private BoardService service = new BoardServiceImpl();
	private BoardCategoryService categoryService = new BoardCategoryServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("trendList", boardClassService.listTrend());
		req.setAttribute("likesList", service.listLikes());
		req.setAttribute("categories", categoryService.list());
		req.setAttribute("cri", new Criteria(req));
		req.getRequestDispatcher("/WEB-INF/common/index.jsp").forward(req, resp);
	}
}
