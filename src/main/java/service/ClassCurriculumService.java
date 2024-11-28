package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.ClassCurriculum;

public interface ClassCurriculumService {
	List<ClassCurriculum> list();
	
	List<ClassCurriculum> boardList(Long cbno);
	
	ClassCurriculum boardOne(Long cbno);
	
	ClassCurriculum findByStartdateAndCbno(@Param("startdate")String startdate, @Param("cbno")Long cbno);
	
	ClassCurriculum findBy(Long ccno);
	
	int write(ClassCurriculum classCurriculum);
	
	int delete(Long ccno);
}
