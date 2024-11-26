package servlet.member;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import service.MemberService;
import service.MemberServiceImpl;
import utils.MailSender;
import vo.Member;

@WebServlet("/member/validaty")
public class SignupValidity extends HttpServlet{
	private MemberService service = MemberServiceImpl.getInstance();
	private Gson gson = new Gson();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 이메일 중복, 아이디 중복, 닉네임 중복 체크
		Member member = gson.fromJson(req.getReader(), Member.class);
		System.out.println(member);
		Map<String, Boolean> map = new HashMap<String, Boolean>();
		map.put("result", service.validateMember(member));
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(gson.toJson(map));
	}
	
	
}
