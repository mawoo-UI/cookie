package mapper;

import java.util.List;

import vo.BoardCategory;

public interface BoardCategoryMapper {
	List<BoardCategory> selectList();
	BoardCategory selectOne(Integer cno);
}
