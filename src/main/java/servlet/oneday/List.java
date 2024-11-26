package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardClassService;
import service.BoardClassServiceImpl;

@WebServlet("/oneday/list")
public class List extends HttpServlet{
	private BoardClassService boardClassService = new BoardClassServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("classes", boardClassService.listShow());
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/list.jsp").forward(req, resp);
	}
}
