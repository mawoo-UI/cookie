package servlet.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import service.BoardLikesService;
import service.BoardLikesServiceImpl;
import utils.Commons;
import vo.BoardLikes;

@WebServlet("/likesToggle")
public class LikesToggle extends HttpServlet{
	private BoardLikesService service = new BoardLikesServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardLikes likes = Commons.param(req, BoardLikes.class);
		System.out.println(likes);
		
		Map<String, Boolean> map = new HashMap<>();
		
		map.put("result", service.toggleLikes(likes));
		
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(new Gson().toJson(map));
	}
	
}
