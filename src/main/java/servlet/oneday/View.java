package servlet.oneday;

import java.io.IOException;
import java.text.NumberFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardClassService;
import service.BoardClassServiceImpl;
import service.ClassCurriculumService;
import service.ClassCurriculumServiceImpl;
import utils.Commons;

@WebServlet("/oneday/view")
public class View extends HttpServlet{
	private BoardClassService boardClassService = new BoardClassServiceImpl();
	private ClassCurriculumService classCurriculumService = new ClassCurriculumServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("cbno") == null) {
			Commons.printMsg("비정상적인 접근입니다", "list", resp);
			return;
		}
		
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		
		req.setAttribute("classItem", boardClassService.findBy(cbno));
		req.setAttribute("classes", classCurriculumService.boardList(cbno));
		
		int price = classCurriculumService.boardList(cbno).getFirst().getPrice();
		int maxEntry = classCurriculumService.boardList(cbno).getFirst().getMax();
		String dutime = classCurriculumService.boardList(cbno).getFirst().getDutime();
		String location = classCurriculumService.boardList(cbno).getFirst().getLocation();
		System.out.println(classCurriculumService.boardList(cbno).getFirst());
		
		req.setAttribute("price", NumberFormat.getInstance().format(price));
		req.setAttribute("max", maxEntry);
		req.setAttribute("dutime", dutime);
		req.setAttribute("location", location);
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/view.jsp").forward(req, resp);
	}
}
