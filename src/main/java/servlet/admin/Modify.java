package servlet.admin;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import service.BoardService;
import service.BoardServiceImpl;
import utils.Commons;
//import vo.Member;
import vo.Board;

@WebServlet("/admin/board/modify")
public class Modify extends HttpServlet {
	private BoardService service = new BoardServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pnoStr = req.getParameter("pno");
		Criteria cri = new Criteria(req);
//		Object memberObj = req.getSession().getAttribute("member");
//		String redirectUrl = "list?" + cri.getQs2();
//		
//		if(pnoStr == null || memberObj == null) {
//			Commons.printMsg("비정상적인 접근입니다.", redirectUrl, resp);
//			return;
//		}
		Long pno = Long.valueOf(pnoStr);
//		Member m = (Member) memberObj;
//		if(!m.getId().equals(service.findBy(pno).getWriter())) {
//			Commons.printMsg("본인이 작성한 글만 수정할 수 있습니다.", redirectUrl, resp);
//			return;
//		
//		}
		req.setAttribute("cri", cri);
		req.setAttribute("board", service.findBy(pno));
		req.getRequestDispatcher("/WEB-INF/jsp/admin/board/modify.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		Object membObject = req.getSession().getAttribute("member");
		Criteria cri = new Criteria(req);
		
//		if(membObject == null) {
//			Commons.printMsg("비정상적인 접근입니다.","list?"+cri.getQs2(), resp);
//			return;
//		}
//		Member m = (Member) membObject;
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String pnoStr = req.getParameter("pno");
		Long pno = Long.valueOf(pnoStr);
		
//		if(!m.getId().equals(service.findBy(pno).getWriter())) {
//			Commons.printMsg("본인이 작성한 글만 수정할 수 있습니다.", "list?"+cri.getQs2(), resp);
//			return;
//		}
		service.modify(Board.builder().title(title).content(content).pno(pno).build());
		resp.sendRedirect("view?pno="+pno+"&"+cri.getQs2());
	}
	
}
	
		