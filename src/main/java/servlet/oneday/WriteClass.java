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
import utils.Commons;
import vo.BoardClass;
import vo.ClassCurriculum;

@WebServlet("/oneday/writeclass")
public class WriteClass extends HttpServlet {
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ClassCurriculumService curriculumService = ClassCurriculumServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Object memberObj = req.getSession().getAttribute("member");
		
		if(memberObj == null) {
			Commons.printMsg("로그인 후에 이용하실 수 있습니다.", "/cookie/member/signin", resp);
			return;
		}
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/write-class.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardClass bc = Commons.param(req, BoardClass.class);
		ClassCurriculum curri = Commons.param(req, ClassCurriculum.class);
		curri.setLname(bc.getTitle());
		
		System.out.println(bc);
		System.out.println(curri);
		
		bc = BoardClass.builder()
						.title(bc.getTitle())
						.content(bc.getContent())
						.host(bc.getHost())
						.accept(1)
						.dutime(curri.getDutime())
						.location(curri.getLocation())
						.price(curri.getPrice())
						.max(curri.getMax())
						.build();
		
		boardClassService.write(bc);

		BoardClass newClass = boardClassService.listAll().getLast();
		if(newClass.getAccept() != 0) {
			System.out.println("cbno는? " + newClass.getCbno());
			curri.setCbno(newClass.getCbno());
		}
		
		curriculumService.write(curri);
		
		resp.sendRedirect("list");
	}
	
}
