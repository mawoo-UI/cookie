package servlet.member;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import at.favre.lib.bytes.BinaryToTextEncoding.Encoder;
import service.MemberService;
import service.MemberServiceImpl;
import utils.Commons;
import vo.Member;

@SuppressWarnings("serial")
@WebServlet("/member/signin")
/**
 * 
 */
public class Signin extends HttpServlet{
	private MemberService service = MemberServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Member m = Commons.param(req, Member.class);
		System.out.println(m);
		req.getRequestDispatcher("/WEB-INF/jsp/member/signin.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String remember = req.getParameter("remember-id");
		System.out.println(remember);
		
		Member member = Commons.param(req, Member.class);
		
		if(service.login(member)) {
			// 로그인 성공
			HttpSession session = req.getSession();
			session.setAttribute("member", service.findBy(member.getId()));
			
			// 쿠키에 아이디 기억 여부 처리
			if(remember != null) {
				Cookie cookie = new Cookie("remember-id", member.getId());
				cookie.setMaxAge(60 * 60 * 24 * 7);
				resp.addCookie(cookie);
			} else {
				// 아이디 기억 안할 때 처리할 일
				Cookie[] cookies = req.getCookies();
				for(Cookie c : cookies) {
					if(c.getName().equals("remember-id")) {
						c.setMaxAge(0);
						resp.addCookie(c);
						break;
					}
				}
			}
			
			// url파라미터 여부에 따른 리디렉션 페이지 지정
			String redirectURL = req.getContextPath()+"/index";
			String url = req.getParameter("url");
			if(url != null && !url.equals("")) {
				redirectURL = URLDecoder.decode(url, "utf-8") ;
			}
			resp.sendRedirect(redirectURL);
		}
		else {
			resp.sendRedirect("signin?msg=fail");
		}
	}
	
}
