package servlet.ajegag;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AjeService;
import service.AjeServiceImpl;
import utils.Commons;

@WebServlet("/aje/ajax")
public class AjeAjax extends HttpServlet{
	private AjeService service = AjeServiceImpl.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Commons.respJson(resp, service.findRand());
	}

}
