package servlet.oneday;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import service.FavoriteService;
import service.FavoriteServiceImpl;
import utils.Commons;
import vo.Favorite;

@WebServlet("/oneday/favorite")
public class FavoriteClass extends HttpServlet{
	private FavoriteService favoriteService = FavoriteServiceImpl.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Favorite favorite = Commons.param(req, Favorite.class);
		
		Map<String, Boolean> map = new HashMap<>();
		map.put("fav", favoriteService.toggle(favorite));
		
		resp.setContentType("application/json; charset=utf-8");
		resp.getWriter().print(new Gson().toJson(map));
	}
	
}
