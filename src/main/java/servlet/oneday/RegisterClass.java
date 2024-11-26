package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardClassService;
import service.BoardClassServiceImpl;
import service.ClassCurriculumService;
import service.ClassCurriculumServiceImpl;

@WebServlet("/oneday/regclass")
public class RegisterClass extends HttpServlet {
	private BoardClassService boardClassService = new BoardClassServiceImpl();
	private ClassCurriculumService curriculumService = new ClassCurriculumServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		req.setAttribute("regClass", boardClassService.findBy(cbno));
		req.setAttribute("days", curriculumService.boardList(cbno));
		System.out.println(req.getParameter("cbno"));
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/register-class.jsp").forward(req, resp);
	}
}
