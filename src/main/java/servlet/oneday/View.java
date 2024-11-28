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
import service.MemberService;
import service.MemberServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;

@WebServlet("/oneday/view")
public class View extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ClassCurriculumService classCurriculumService = ClassCurriculumServiceImpl.getInstance();
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	private MemberService memberService = MemberServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("cbno") == null) {
			Commons.printMsg("비정상적인 접근입니다", "list", resp);
			return;
		}
		
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		String host = memberService.findBy(boardClassService.view(cbno).getHost()).getNick();
		
		req.setAttribute("classItem", boardClassService.view(cbno));
		req.setAttribute("classList", classCurriculumService.boardList(cbno));
		req.setAttribute("classOne", classCurriculumService.boardOne(cbno));
		req.setAttribute("reviews", reviewService.findReviews(cbno));
		req.setAttribute("count", reviewService.count(cbno));
		req.setAttribute("host", host);
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/view.jsp").forward(req, resp);
	}
}
