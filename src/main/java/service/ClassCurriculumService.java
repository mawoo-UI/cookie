package service;

import java.util.Date;
import java.util.List;

import vo.ClassCurriculum;

public interface ClassCurriculumService {
	List<ClassCurriculum> list();
	
	List<ClassCurriculum> boardList(Long cbno);
	
	ClassCurriculum boardOne(Long cbno);
	
	ClassCurriculum findByStartdateAndLname(Date startdate, String lname);
	
	ClassCurriculum findBy(Long ccno);
	
	int write(ClassCurriculum classCurriculum);
	
	int delete(Long ccno);
}
