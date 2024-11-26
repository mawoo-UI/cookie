package service;

import java.util.List;

import vo.ClassReg;

public interface ClassRegService {
	List<ClassReg> list();
	
	ClassReg findBy(Long regno);
	
	int write(ClassReg classReg);
	
	int remove(Long regno);
}
