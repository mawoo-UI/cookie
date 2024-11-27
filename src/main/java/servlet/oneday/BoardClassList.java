package servlet.oneday;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardClassService;
import service.BoardClassServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import vo.BoardClass;

@WebServlet("/oneday/list")
public class BoardClassList extends HttpServlet{
	private BoardClassService boardClassService = new BoardClassServiceImpl();
	private ReviewService reviewService = new ReviewServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<BoardClass> boards = boardClassService.listShow();
		
		int size = boardClassService.listShow().size();
		Double[] scores = new Double[size];
		for(int i = 0; i < boards.size(); i++) {
			if(reviewService.findReviews(boards.get(i).getCbno()) == null ) {
				scores[i] = 0.;
				continue;
			}
			scores[i] = reviewService.score(boards.get(i).getCbno());
		}
		
		req.setAttribute("classes", boards);
		req.setAttribute("scores", scores);
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/list.jsp").forward(req, resp);
	}
}
