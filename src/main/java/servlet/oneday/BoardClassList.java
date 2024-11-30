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

@WebServlet("/oneday/list")
public class BoardClassList extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Criteria cri = new Criteria(req);
		/*
		 * List<BoardClass> boards = boardClassService.sortCbno(cri, null, null);
		 * 
		 * int size = boardClassService.listShow(cri).size(); Double[] scores = new
		 * Double[size]; for(int i = 0; i < boards.size(); i++) {
		 * if(reviewService.findReviews(boards.get(i).getCbno()) == null ) { scores[i] =
		 * 0.; continue; } scores[i] = reviewService.score(boards.get(i).getCbno()); }
		 * 
		 * 
		 * req.setAttribute("classes", boards); req.setAttribute("scores", scores);
		 * req.setAttribute("cri", cri);
		 */
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/list.jsp").forward(req, resp);
	}
}
