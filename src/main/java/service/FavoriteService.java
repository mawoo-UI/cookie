package service;

import java.util.List;

import vo.Favorite;

public interface FavoriteService {
	List<Favorite> listById(String memberId);
	
	List<Favorite> listByCcno(Long cbno);
	
	Favorite findBy(Favorite favorite);
	
	int write(Favorite favorite);
	
	int remove(Long cbno, String memberId);
	
	boolean toggle(Favorite favorite);
}
