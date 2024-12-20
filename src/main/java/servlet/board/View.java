package servlet.board;

import java.io.IOException;
import java.security.Provider.Service;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import service.BoardCategoryService;
import service.BoardCategoryServiceImpl;
import service.BoardLikesService;
import service.BoardLikesServiceImpl;
import service.BoardService;
import service.BoardServiceImpl;
import utils.Commons;
import vo.BoardLikes;
import vo.Member;


@WebServlet("/board/view")
public class View extends HttpServlet{
	private BoardService service = new BoardServiceImpl();
	private BoardLikesService likesService = new BoardLikesServiceImpl();
	private BoardCategoryService categoryService = new BoardCategoryServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Criteria cri = new Criteria(req);
		
		String pnoString = req.getParameter("pno");
		if(pnoString == null) {
			Commons.printMsg("비정상적인 접근입니다.", "list", resp);
			return;
		}
		Long pno = Long.valueOf(pnoString);
		req.setAttribute("board", service.view(pno));
		req.setAttribute("cri", cri);
		req.setAttribute("cname", categoryService.findBy(cri.getCategory()).getCname());
		
		Object obj = req.getSession().getAttribute("member");
		if(obj != null) {
			Member member = (Member) obj;
			req.setAttribute("likes", likesService.findBy(BoardLikes.builder().pno(pno).id(member.getId()).build()));
		}
		
		req.getRequestDispatcher("/WEB-INF/jsp/board/view.jsp").forward(req, resp);
	
	}
}
