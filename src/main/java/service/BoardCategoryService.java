package service;

import java.util.List;

import vo.BoardCategory;

public interface BoardCategoryService {
	List<BoardCategory> list();
	
	BoardCategory findBy(Integer cno);
}
