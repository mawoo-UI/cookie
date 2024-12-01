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
import service.FavoriteService;
import service.FavoriteServiceImpl;
import service.MemberService;
import service.MemberServiceImpl;
import service.ReviewService;
import service.ReviewServiceImpl;
import utils.Commons;
import vo.BoardClass;
import vo.Favorite;
import vo.Member;

@WebServlet("/oneday/view")
public class View extends HttpServlet{
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ClassCurriculumService classCurriculumService = ClassCurriculumServiceImpl.getInstance();
	private ReviewService reviewService = ReviewServiceImpl.getInstance();
	private MemberService memberService = MemberServiceImpl.getInstance();
	private FavoriteService favoriteService = FavoriteServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("cbno") == null) {
			Commons.printMsg("비정상적인 접근입니다", "list", resp);
			return;
		}
		
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		BoardClass bc = boardClassService.view(cbno);
		String host = memberService.findBy(bc.getHost()).getNick();
		
		req.setAttribute("classItem", bc);
		req.setAttribute("classList", classCurriculumService.boardList(cbno));
		req.setAttribute("classOne", classCurriculumService.boardOne(cbno));
		req.setAttribute("count", reviewService.count(cbno));
		req.setAttribute("host", host);
		
		Object memberObj = req.getSession().getAttribute("member");
		
		if(memberObj != null) {
			Member member = (Member) memberObj;
			String id = member.getId();
			req.setAttribute("fav", favoriteService.findBy(Favorite.builder().cbno(cbno).memberId(id).build()));
		}
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/view.jsp").forward(req, resp);
	}
}
