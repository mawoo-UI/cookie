package mapper;

import java.util.List;

import vo.BoardLikes;

public interface BoardLikesMapper {
	List<BoardLikes> selectList(Long pno);
}
