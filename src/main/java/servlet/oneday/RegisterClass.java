package servlet.oneday;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

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
import utils.Commons;
import vo.ClassCurriculum;
import vo.ClassReg;
import vo.Member;

@WebServlet("/oneday/regclass")
public class RegisterClass extends HttpServlet {
	private BoardClassService boardClassService = new BoardClassServiceImpl();
	private ClassCurriculumService curriculumService = new ClassCurriculumServiceImpl();
	private ClassRegService regService = new ClassRegServiceImpl();
	
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
		String lname = req.getParameter("title"); // ccno 찾기
		System.out.println("lname ::: " +lname);
		String content = req.getParameter("content");
		System.out.println("content ::: " +content);
		String nickname = req.getParameter("nickname");
		System.out.println("nickname ::: " +nickname);
		String tel = req.getParameter("tel");
		System.out.println("tel ::: " +tel);
		String startdate = req.getParameter("startdate"); // ccno 찾기
		System.out.println("startdate ::: " +startdate);
		
		
		//startdate = startdate.replace('/', '-');
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		try {
			date = formatter.parse(startdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//Date start = new Date(startdate);
		//System.out.println("start ::: " + start);
		
		System.out.println(date);
		
		ClassCurriculum curriculum = curriculumService.findByStartdateAndLname(date, lname);
		Long ccno = curriculum.getCcno();
		String host = curriculum.getHost();
		
		System.out.println("curri ::: "+ curriculum);
		
		Member member = (Member) req.getSession().getAttribute("member");
		String writer = member.getId();
		
		if(host.equals(writer)) {
			Commons.printMsg("자신의 강좌를 수강 신청 할 수 없습니다.", "view?cbno=" + req.getParameter("cbno"), resp);
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
		resp.sendRedirect("view?cbno=" + req.getParameter("cbno"));
	}
}
