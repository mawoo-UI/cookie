package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;
import vo.Member;

@WebServlet("/oneday/remove")
public class RemoveReview extends HttpServlet {
	private ReviewService reviewService = new ReviewServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String renoStr = req.getParameter("reno");
		String cbnoStr = req.getParameter("cbno");
		Object memberObj = req.getSession().getAttribute("member");
		String redirectUrl = "view?cbno=" + cbnoStr;
		
		if(renoStr == null || memberObj == null || cbnoStr == null) {
			Commons.printMsg("비정상적인 접근입니다.", redirectUrl, resp);
			return;
		}
		
		Member m = (Member) memberObj;
		Long reno = Long.valueOf(renoStr);
		
		if(!m.getId().equals(reviewService.findBy(reno).getWriter())) {
			Commons.printMsg("본인이 작성한 리뷰만 삭제할 수 있습니다", redirectUrl, resp);
			return;
		}
		
		reviewService.remove(reno);
		resp.sendRedirect(redirectUrl);
	}
	
}
