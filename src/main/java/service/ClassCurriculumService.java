package service;

import java.util.List;

import vo.ClassCurriculum;

public interface ClassCurriculumService {
	List<ClassCurriculum> list();
	
	ClassCurriculum findBy(Long ccno);
	
	int write(ClassCurriculum classCurriculum);
	
	int delete(Long ccno);
}