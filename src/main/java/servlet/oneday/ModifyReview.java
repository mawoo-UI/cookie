package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardClassService;
import service.BoardClassServiceImpl;
import service.MemberService;
import service.MemberServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;
import vo.BoardClass;
import vo.Member;

@WebServlet("/oneday/modify")
public class ModifyReview extends HttpServlet{
	private ReviewService reviewService = new ReviewServiceImpl();
	private BoardClassService boardClassService = new BoardClassServiceImpl();
	private MemberService memberService = MemberServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Object memberObj = req.getSession().getAttribute("member");
		Member m =  (Member) memberObj;
		
		String renoStr = req.getParameter("reno");
		Long reno = Long.valueOf(renoStr);
		String cbnoStr = req.getParameter("cbno");
		Long cbno = Long.valueOf(cbnoStr);

		if(req.getParameter("reno") == null || memberObj == null) {
			Commons.printMsg("비정상적인 접근입니다", "review?cbno=" + cbnoStr + "&reno=" + renoStr, resp);
			return;
		}
		
		vo.Review review = reviewService.findBy(reno);
		String nick = memberService.findBy(review.getWriter()).getNick();
		BoardClass boardClass = boardClassService.findBy(cbno);

		if(!m.getId().equals(memberService.findBy(review.getWriter()).getId())) {
			Commons.printMsg("본인이 작성한 리뷰만 수정할 수 있습니다.", "review?cbno=" + cbnoStr + "&reno=" + renoStr, resp);
			return;
		}
		
		req.setAttribute("nick", nick);
		req.setAttribute("review", review);
		req.setAttribute("classItem", boardClass);
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/modify-review.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Object memberObj = req.getSession().getAttribute("member");
		String renoStr = req.getParameter("reno");
		Long reno = Long.valueOf(renoStr);
		String cbnoStr = req.getParameter("cbno");
		Long cbno = Long.valueOf(cbnoStr);
		String redirectUrl = "review?cbno=" + cbnoStr + "&reno=" + renoStr;
		
		if(memberObj == null || reno == null || cbno == null) {
			Commons.printMsg("비정상적인 접근입니다", redirectUrl, resp);
			return;
		}
		
		Member m = (Member) memberObj;
		vo.Review review = reviewService.findBy(reno);
		
		if(!m.getId().equals(memberService.findBy(review.getWriter()).getId())) {
			Commons.printMsg("본인이 작성한 리뷰만 수정할 수 있습니다.", "review?cbno=" + cbnoStr + "&reno=" + renoStr, resp);
			return;
		}
		
		String content = req.getParameter("content");
		int score = Integer.parseInt(req.getParameter("score"));
		
		review = vo.Review.builder()
						.reno(reno)
						.content(content)
						.score(score)
						.build();
		reviewService.modify(review);
		
		resp.sendRedirect("review?cbno=" + cbnoStr + "&reno=" + renoStr);
	}
	
}
