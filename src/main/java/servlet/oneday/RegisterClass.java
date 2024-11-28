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
import service.ClassRegService;
import service.ClassRegServiceImpl;
import service.MyClassService;
import service.MyClassServiceImpl;
import utils.Commons;
import vo.ClassCurriculum;
import vo.ClassReg;
import vo.MyClass;

@WebServlet("/oneday/regclass")
public class RegisterClass extends HttpServlet {
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ClassCurriculumService curriculumService = ClassCurriculumServiceImpl.getInstance();
	private ClassRegService regService = ClassRegServiceImpl.getInstance();
	private MyClassService myClassService = MyClassServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		req.setAttribute("regClass", boardClassService.findBy(cbno));
		req.setAttribute("days", curriculumService.boardList(cbno));
		System.out.println(req.getParameter("cbno"));
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/register-class.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		String content = req.getParameter("content");
		String nickname = req.getParameter("nickname");
		String tel = req.getParameter("tel");
		String startdate = req.getParameter("startdate"); // ccno 찾기
		System.out.println(startdate);
		
		ClassCurriculum curriculum = curriculumService.findByStartdateAndCbno(startdate, cbno);
		Long ccno = curriculum.getCcno();
		String host = curriculum.getHost();
		String writer = req.getParameter("writer");
		
		if(host.equals(writer)) {
			Commons.printMsg("자신의 강좌를 수강 신청 할 수 없습니다.", "view?cbno=" + req.getParameter("cbno"), resp);
			return;
		}
		
		ClassReg classReg = ClassReg.builder()
						.content(content)
						.nickname(nickname)
						.tel(tel)
						.writer(writer)
						.ccno(ccno)
						.build();
		System.out.println(classReg);
		regService.write(classReg);
		
		MyClass my = MyClass.builder()
						.ccno(ccno)
						.id(writer)
						.build();
		myClassService.write(my);
		
		resp.sendRedirect("view?cbno=" + req.getParameter("cbno"));
	}
}
