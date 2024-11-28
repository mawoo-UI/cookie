package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MemberService;
import service.MemberServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;

@WebServlet("/oneday/review")
public class Review extends HttpServlet{
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	private MemberService memberService = MemberServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String renoStr = req.getParameter("reno");
		String cbnoStr = req.getParameter("cbno");
		
		if(renoStr == null || cbnoStr == null) {
			Commons.printMsg("비정상적인 접근입니다", "list", resp);
			return;
		}
		
		Long reno = Long.valueOf(renoStr);
		vo.Review review = reviewService.findBy(reno);
		String nick = memberService.findBy(review.getWriter()).getNick();
		
		req.setAttribute("nick", nick);
		req.setAttribute("review", review);
		req.setAttribute("cbno", req.getParameter("cbno"));
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/review.jsp").forward(req, resp);
	}
}
