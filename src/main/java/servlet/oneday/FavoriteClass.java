package servlet.oneday;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import service.FavoriteService;
import service.FavoriteServiceImpl;
import utils.Commons;
import vo.Favorite;
import vo.Member;

@WebServlet("/oneday/favorite/*")
public class FavoriteClass extends HttpServlet{
	private FavoriteService favoriteService = FavoriteServiceImpl.getInstance();
	private Gson gson = new GsonBuilder().setDateFormat("yyyy/MM/dd HH:mm:ss").create();
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long cbno = Long.valueOf(req.getParameter("cbno"));
		Object memberObj = req.getSession().getAttribute("member");
		
		if(cbno == null) {
			Commons.printMsg("비정상적인 접근입니다.", "list", resp);
			return;
		}
		
		if(memberObj == null) {
			Commons.printMsg("로그인이 필요한 서비스입니다.", "view?cbno=" + cbno, resp);
			return;
		}
		
		Member m = (Member) memberObj;
		favoriteService.remove(cbno, m.getId());
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Favorite favorite = gson.fromJson(req.getReader(), Favorite.class);
		System.out.println(favorite);
		favoriteService.write(favorite);
	}

}
