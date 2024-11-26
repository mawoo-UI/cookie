package service;

import java.util.List;

import vo.ClassSubject;

public interface ClassSubjectService {
	List<ClassSubject> list();
	
	ClassSubject findBy(Long sno);
	
	int write(ClassSubject classSubject);
	
	int remove(Long sno);
}
