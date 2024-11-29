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
import vo.Member;
import vo.MyClass;

@WebServlet("/oneday/regclass")
public class RegisterClass extends HttpServlet {
	private BoardClassService boardClassService = BoardClassServiceImpl.getInstance();
	private ClassCurriculumService curriculumService = ClassCurriculumServiceImpl.getInstance();
	private ClassRegService regService = ClassRegServiceImpl.getInstance();
	private MyClassService myClassService = MyClassServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Object memberObj = req.getSession().getAttribute("member");
		
		if(memberObj == null) {
			Commons.printMsg("로그인이 필요한 서비스입니다.", "/cookie/member/signin", resp);
			return;
		}
		Member m = (Member) memberObj;
		
		if(m.getName() == null) {
			Commons.printMsg("실명 인증 후 이용하실 수 있습니다.", "/cookie/member/mypage", resp);
			return;
		}
		
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		req.setAttribute("regClass", boardClassService.findBy(cbno));
		req.setAttribute("days", curriculumService.boardList(cbno));
		
		req.getRequestDispatcher("/WEB-INF/jsp/oneday/register-class.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long cbno = Long.valueOf(req.getParameter("cbno")); // ccno 찾기
		String startdate = req.getParameter("startdate"); // ccno 찾기
		
		ClassCurriculum curriculum = curriculumService.findByStartdateAndCbno(startdate, cbno);
		System.out.println(curriculum);
		
		Long ccno = curriculum.getCcno();
		String host = req.getParameter("host");
		String writer = req.getParameter("writer");
		
		if(myClassService.findBy(ccno, writer) != null) {
			Commons.printMsg("이미 신청한 클래스입니다.", "view?cbno=" + cbno, resp);
			return;
		}
		
		if(host.equals(writer)) {
			Commons.printMsg("자신의 강좌를 수강 신청 할 수 없습니다.", "view?cbno=" + cbno, resp);
			return;
		}
		
		ClassReg classReg = Commons.param(req, ClassReg.class);
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
