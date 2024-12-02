package servlet.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import service.BoardServiceImpl;

@WebServlet("/header")
public class Header extends HttpServlet{
	private BoardService boardService = new BoardServiceImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("event", boardService.getLatestEvent());
		req.getRequestDispatcher("/WEB-INF/common/header.jsp").forward(req, resp);
	}
	
}
