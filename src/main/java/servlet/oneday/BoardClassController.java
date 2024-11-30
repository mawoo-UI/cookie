package servlet.oneday;

import java.io.IOException;
import java.util.List;

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
import vo.BoardClass;


@WebServlet("/oneday/list/api/*")
public class BoardClassController extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		uri = uri.replace(req.getContextPath() + "/oneday/list/api/", "");
		Criteria cri = Commons.param(req, Criteria.class);
		Long cbno = null;
		Long viewCount = null;
		
		int tmpIdx = uri.indexOf("/");
		Long number = null;
		if(tmpIdx != -1) {
			String tmp = uri.substring(tmpIdx+1);
			System.out.println(tmp);
			number = Long.valueOf(tmp);
		}
		
		if(uri.startsWith("cbno")) { 
			cbno = number;
		}
		else if(uri.startsWith("vc")) {
			viewCount = number;
			if(tmpIdx == -1) viewCount = 9999_9999L;
		}
//		
//		List<BoardClass> boards = boardClassService.listShow(cri);
//		
//		int size = boardClassService.listShow(cri).size();
//		Double[] scores = new Double[size];
//		for(int i = 0; i < boards.size(); i++) {
//			if(reviewService.findReviews(boards.get(i).getCbno()) == null ) {
//				scores[i] = 0.;
//				continue;
//			}
//			scores[i] = reviewService.score(boards.get(i).getCbno());
//		}
		
		
//		req.setAttribute("classes", boards);
//		req.setAttribute("scores", scores);
//		req.setAttribute("cri", cri);
		
		Commons.respJson(resp, boardClassService.sortCbno(cri, cbno, viewCount));
//		req.getRequestDispatcher("/WEB-INF/jsp/oneday/list.jsp").forward(req, resp);
	}
	
}
