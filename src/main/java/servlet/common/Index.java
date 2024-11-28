package servlet.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardClassService;
import service.BoardClassServiceImpl;

@WebServlet("/index")
public class Index extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("trendList", boardClassService.listTrend());
		req.getRequestDispatcher("/WEB-INF/common/index.jsp").forward(req, resp);
	}
}
