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
		
		Long cbno = null;
		Long reno = null;
		
		int tmpIdx = uri.indexOf("/");
		if(tmpIdx != -1) {
			String tmp = uri.substring(tmpIdx+1);
			String[] splits = tmp.split("/");
			cbno = Long.valueOf(splits[1]);
			if(splits.length > 2) {
				reno = Long.valueOf(tmp.split("/")[3]);
			}
		}
		
		Commons.respJson(resp, reviewService.findReviews(cbno, reno));
	}
	
}
