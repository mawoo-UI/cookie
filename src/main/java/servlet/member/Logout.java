package servlet.member;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/logout")
public class Logout extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getSession().invalidate();
		
		String redirectURL = req.getContextPath()+"/index";
		String url = req.getParameter("url");
		if(url != null && !url.equals("")) {
			redirectURL = URLDecoder.decode(url, "utf-8") ;
		}
		resp.sendRedirect(redirectURL);
	}
}
