package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import service.MemberServiceImpl;

@WebFilter("/*")
public class AutoLoginFilter implements Filter{
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		if (request instanceof HttpServletRequest) {
	        HttpSession session = ((HttpServletRequest) request).getSession();
	        
	        Object obj = session.getAttribute("member");
	        if(obj == null) {
	        	session.setAttribute("member", MemberServiceImpl.getInstance().findBy("purplecookie")); 
	        }
	    }
	    chain.doFilter(request, response);
	}
}	
