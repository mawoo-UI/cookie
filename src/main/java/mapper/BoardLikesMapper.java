package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import vo.BoardLikes;

public interface BoardLikesMapper {
	BoardLikes selectOne(BoardLikes boardLikes);
	@Insert("insert into tbl_likes values (#{id},#{pno})")
	void insert(BoardLikes boardLikes);
	@Delete("delete from tbl_likes where pno =#{pno} and id =#{id}")
	void delete(BoardLikes boardLikes);
	@Delete("delete from tbl_likes where pno =#{pno}")
	void deleteAll(Long pno);
	
}
