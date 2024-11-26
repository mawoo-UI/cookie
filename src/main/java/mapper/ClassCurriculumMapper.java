package mapper;

import java.util.List;

import vo.ClassCurriculum;

public interface ClassCurriculumMapper {
	List<ClassCurriculum> selectList();
	
	ClassCurriculum selectOne(Long ccno);
	
	List<ClassCurriculum> selectBoardList(Long cbno);
	
	int insert(ClassCurriculum classCurriculum);
	
	int delete(Long ccno);
}
