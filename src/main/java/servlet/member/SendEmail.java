package servlet.member;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import service.MemberService;
import service.MemberServiceImpl;
import utils.MailSender;
import vo.Member;

@WebServlet("/member/sendMail/*")
public class SendEmail extends HttpServlet{
private Gson gson = new Gson();
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rndText = String.format("%08d", (int)(Math.random() * 100000000));
		// 이메일 중복, 아이디 중복, 닉네임 중복 체크
		Member member = gson.fromJson(req.getReader(), Member.class);
		System.out.println(member);
		
		// 메일 발송
		String title = "Cookie new Cookie 회원 인증 메일입니다.";
		String content = "<div><img><h3 style='text-align:center'>Cookie new Cookie</h3><br><p style='text-align:center'>인증번호 :: " + rndText + "</p>";
		MailSender.send(MailSender.session(), title, content, member.getEmail());
		
		// 세션에 메일 지정, 시간 5분으로 지정
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(60 * 5);
		session.setAttribute("signup-valid-num", rndText);
		
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("result", true);
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(gson.toJson(map));
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String host = req.getRequestURI();
		String reqText = host.substring(host.lastIndexOf("/")+1);
		
		Object vaildNumObj = req.getSession().getAttribute("signup-valid-num");
		// 세션 5분 만기
		if(vaildNumObj == null) {
			resp.setStatus(403);
			resp.getWriter().print("session invalidate");
			return;
		}
		
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("result", vaildNumObj.toString().equals(reqText));
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(gson.toJson(map));
	}
}
