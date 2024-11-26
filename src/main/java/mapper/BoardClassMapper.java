package mapper;

import java.util.List;

import vo.BoardClass;

public interface BoardClassMapper {
	List<BoardClass> selectList();
	
	BoardClass selectOne(Long cbno);
	
	List<BoardClass> showList();
	
	int insert(BoardClass boardClass);
	
	int update(BoardClass boarClass);
	
	int increaseViewCount(Long cbno);
	
	int delete(Long cbno);
}
