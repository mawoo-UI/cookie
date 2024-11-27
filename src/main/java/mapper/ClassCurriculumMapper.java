package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.ClassCurriculum;

public interface ClassCurriculumMapper {
	List<ClassCurriculum> selectList();
	
	ClassCurriculum selectOneByStartdate(@Param("startdate")String startdate, @Param("cbno")Long cbno);
	
	ClassCurriculum selectOne(Long ccno);
	
	List<ClassCurriculum> selectBoardList(Long cbno);
	
	ClassCurriculum selectBoardOne(Long cbno);
	
	int insert(ClassCurriculum classCurriculum);
	
	int delete(Long ccno);
}
