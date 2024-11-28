package service;

import java.util.List;

import dto.Criteria;
import vo.BoardClass;

public interface BoardClassService {
	List<BoardClass> listAll();

	List<BoardClass> listShow(Criteria cri);
	
	BoardClass findBy(Long cbno);
	
	BoardClass view(Long cbno);
	
	int write(BoardClass boardClass);
	
	int remove(Long cbno);
	
	int modify(BoardClass boardClass);
}
