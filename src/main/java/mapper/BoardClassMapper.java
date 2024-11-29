package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import dto.Criteria;
import vo.BoardClass;

public interface BoardClassMapper {
	List<BoardClass> selectList();
	
	List<BoardClass> trendList();
	
	BoardClass selectOne(Long cbno);
	
	List<BoardClass> showList(Criteria cri);
	
	List<BoardClass> selectCbnoDesc(@Param("cri")Criteria cri, @Param("cbno")Long cbno);
	
	int insert(BoardClass boardClass);
	
	int update(BoardClass boarClass);
	
	int increaseViewCount(Long cbno);
	
	int delete(Long cbno);
}
