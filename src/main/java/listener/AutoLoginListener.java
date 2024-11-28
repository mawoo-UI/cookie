package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import service.MemberService;
import service.MemberServiceImpl;

//@WebListener
public class AutoLoginListener implements HttpSessionListener{
	private MemberService service = MemberServiceImpl.getInstance();
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		se.getSession().setAttribute("member", service.findBy("purplecookie"));
	}

	
	
}
