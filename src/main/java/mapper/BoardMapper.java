package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import dto.Criteria;
import vo.Board;

public interface BoardMapper {
	int insert(Board post);
	
	Board selectOne(Long pno);
	
	int getCount(Criteria cri);
	
	List<Board> selectList(Criteria cri);
	List<Board> selectList2();
	
	int update(Board post);
	int increaseViewCount (Long pno);
	int delete(Long pno);

	@Select("select now()")
	String now();
	
	int write(Board post);
	
	void changeLikes(@Param("value") int value, @Param("pno") Long pno);
	
	List<Board> selectLikesList();
	List<Board> selectLikesListBy(Criteria cri);
	
	Board selectMaxEvent();
	
}
