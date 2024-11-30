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

@WebServlet("/oneday/view/api/*")
public class ReviewController extends HttpServlet{
	private ReviewService reviewService = ReviewServiceImpl.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		uri = uri.replace(req.getContextPath() + "/oneday/view/api", "");
		
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		Long reno = null;
		Long number = null;
		
		int tmpIdx = uri.indexOf("/");
		if(tmpIdx != -1) {
			String tmp = uri.substring(tmpIdx+1);
			System.out.println(tmp);
			number = Long.valueOf(tmp.split("/")[1]);
		}
		
		if(uri.startsWith("/reno")) {
			reno = number;
		}
		
		Commons.respJson(resp, reviewService.findReviews(cbno, reno));
	}
	
}
