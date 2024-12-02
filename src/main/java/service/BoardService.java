package service;

import java.util.List;

import dto.Criteria;
import vo.Board;

public interface BoardService {
	int write(Board post);
	
	int modify(Board post);
	
	int remove(Long pno);
	
	Board findBy(Long pno);
	
	Board view(Long pno);
	
	List<Board> list(Criteria cri);
	
	int count(Criteria cri);
	
	List<Board> listLikes();
	List<Board> listLikesBy(Criteria cri);
}
