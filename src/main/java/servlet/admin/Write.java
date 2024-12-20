package servlet.admin;

import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Criteria;
import service.BoardService;
import service.BoardServiceImpl;
import vo.Attach;
import vo.Board;

@WebServlet("/admin/board/write")
public class Write extends HttpServlet{
	private BoardService boardService = new BoardServiceImpl() ;
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Criteria cri = new Criteria(req);
//		if(req.getSession().getAttribute("member")== null) {
//			String cp = req.getContextPath();
//			resp.sendRedirect(cp + "/signin?url=" + 
//					URLEncoder.encode(cp + "/board/write?" + cri.getQs2(), "utf-8"));
//			return;
//		}
		req.setAttribute("cri", cri);
		req.getRequestDispatcher("/WEB-INF/jsp/admin/board/write.jsp").forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Criteria cri = new Criteria(req);
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String writer = req.getParameter("writer");
		int cno = Integer.parseInt(req.getParameter("cno"));
		
		List<Attach> attachs = new ArrayList<Attach>();
		
		String[] uuids = req.getParameterValues("uuid");
		String[] origins = req.getParameterValues("origin");
		String[] paths = req.getParameterValues("path");
		String[] images = req.getParameterValues("image");
		
		if(uuids != null) {
			for (int i = 0; i < uuids.length;  i++) {
				Attach a = Attach.builder()
					.uuid(uuids[i])
					.origin(origins[i])
					.image(images[i].equals("true"))
					.path(paths[i])
					.build();
				attachs.add(a);
			}
		}
//		boardService.write(Board.builder().title(title).content(content).writer(writer).cno(cri.getCategory()).build());
		boardService.write(Board.builder().title(title).content(content).writer(writer).cno(cri.getCategory()).attachs(attachs).build());
		
		resp.sendRedirect("list?" +cri.getQs2());
		
	}
	
}
