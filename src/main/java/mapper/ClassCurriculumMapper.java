package mapper;

import java.util.Date;
import java.util.List;

import vo.ClassCurriculum;

public interface ClassCurriculumMapper {
	List<ClassCurriculum> selectList();
	
	ClassCurriculum selectOneByStartdate(Date startdate, String lname);
	
	ClassCurriculum selectOne(Long ccno);
	
	List<ClassCurriculum> selectBoardList(Long cbno);
	
	ClassCurriculum selectBoardOne(Long cbno);
	
	int insert(ClassCurriculum classCurriculum);
	
	int delete(Long ccno);
}
