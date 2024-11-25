package servlet.post;

import java.io.IOException;
import java.security.Provider.Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import dto.PageDto;
import service.BoardService;
import service.BoardServiceImpl;


@WebServlet("/board/list")
public class BoardList extends HttpServlet{
	private BoardService service = new BoardServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//파라미터 수집
		Criteria cri = new Criteria(req);
		System.out.println(cri);
		req.setAttribute("boards", service.list(cri));
		req.setAttribute("pageDto", new PageDto(cri, service.count(cri)));
		req.getRequestDispatcher("/WEB-INF/jsp/board/list.jsp").forward(req, resp);
	}
}