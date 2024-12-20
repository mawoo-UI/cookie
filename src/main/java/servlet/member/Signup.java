package servlet.member;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MemberService;
import service.MemberServiceImpl;
import utils.Commons;
import vo.Member;

@SuppressWarnings("serial")
@WebServlet("/member/signup")
/**
 * <h2>회원가입 양식</h2>
 * <strong>회원가입</strong>에 필요한 폼 페이지를 doGet에서 forward, <strong>회원가입</strong>프로세스를 doPost에서 처리한다.
 * 회원가입 양식에서 필수데이터는 vo.Member의 id,pw,name,email,tel,birth,addr이다.
 * 추후 비밀번호는 암호화를 통해 관리되고 로그인된다.
 * 회원 주소 검색은 juso.go.kr의 팝업API를 사용한다.
 */
public class Signup extends HttpServlet{
	private MemberService service = MemberServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String clauseAgree = req.getParameter("clause");
		String infoAgree = req.getParameter("info");
		
		if(clauseAgree == null || infoAgree == null) {
			Commons.printMsg("약관 동의 이후에 접근할 수 있습니다.", "term" , resp);
			return;
		}
		req.setAttribute("clause", clauseAgree);	
		req.setAttribute("info", infoAgree);
		
		String referer = req.getHeader("Referer");
		System.out.println(referer);
		if(referer.endsWith("term") ) {
			req.getRequestDispatcher("/WEB-INF/jsp/member/signup.jsp").forward(req, resp);
			return;
		}
		
		Member member = Commons.param(req, Member.class);
		
		service.register(member);
		Commons.printMsg("회원 가입이 완료되었습니다", "signin", resp);
	}
	
}
