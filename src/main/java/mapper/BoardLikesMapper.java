package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.BoardLikes;

public interface BoardLikesMapper {
	BoardLikes selectOne(@Param("pno") Long pno, @Param("id") String id);
}
