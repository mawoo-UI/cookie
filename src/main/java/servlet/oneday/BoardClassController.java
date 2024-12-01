package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import service.BoardClassService;
import service.BoardClassServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;

@WebServlet("/oneday/list/api/*")
public class BoardClassController extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		uri = uri.replace(req.getContextPath() + "/oneday/list/api", "");
		Criteria cri = Commons.param(req, Criteria.class);
		Long cbno = null;
		Long viewCount = null;
		
		System.out.println(uri);
		int tmpIdx = uri.indexOf("/");
		Long number = null;
		if(tmpIdx != -1) {
			String tmp = uri.substring(tmpIdx+1);
			System.out.println(tmp);
			number = Long.valueOf(tmp.split("/")[1]);
		}
		
		if(uri.startsWith("/cbno")) { 
			cbno = number;
		}
		else if(uri.startsWith("/vc")) {
			viewCount = number;
			if(tmpIdx == -1) viewCount = 9999_9999L;
		}
		
		Commons.respJson(resp, boardClassService.sortCbno(cri, cbno, viewCount));
//		Commons.respJson(resp, reviewService.score(cbno));
	}
	
}
