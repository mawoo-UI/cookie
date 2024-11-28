package mapper;

import java.util.List;

import dto.Criteria;
import vo.BoardClass;

public interface BoardClassMapper {
	List<BoardClass> selectList();
	
	List<BoardClass> trendList();
	
	BoardClass selectOne(Long cbno);
	
	List<BoardClass> showList(Criteria cri);
	
	int insert(BoardClass boardClass);
	
	int update(BoardClass boarClass);
	
	int increaseViewCount(Long cbno);
	
	int delete(Long cbno);
}
