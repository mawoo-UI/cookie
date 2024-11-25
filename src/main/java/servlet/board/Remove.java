package servlet.board;

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

@WebServlet("/board/remove")
public class Remove extends HttpServlet{
	private BoardService service = new BoardServiceImpl();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pnoStr = req.getParameter("pno");
		Object memberObject = req.getSession().getAttribute("member");
		Criteria cri = new Criteria(req);
		String redirectUrl = "list?" + cri.getQs2();
		
		if(pnoStr == null || memberObject == null) {
			Commons.printMsg("비정상적인 접근입니다",redirectUrl, resp);
			return;
		}
		Long pno = Long.valueOf(pnoStr);
//		Member m = (Member) memberObject;
//		if(!m.getId().equals(service.findBy(pno).getWriter())) {
//			printMsg("본인이 작성한 글만 삭제할 수 있습니다.", redirectUrl, resp);
//			return;
//		}
		service.remove(pno);
		
		
		resp.sendRedirect(redirectUrl);
	}
	
			
}
