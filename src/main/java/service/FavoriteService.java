package service;

import java.util.List;

import vo.Favorite;

public interface FavoriteService {
	List<Favorite> listById(String memberId);
	
	List<Favorite> listByCcno(Long cbno);
	
	Favorite findBy(Long cbno, String memberId);
	
	int write(Favorite favorite);
	
	int remove(Long cbno, String memberId);
}
