package mapper;

import java.util.List;

import vo.ClassReg;

public interface ClassRegMapper {
	List<ClassReg> selectList();
	
	ClassReg selectOne(Long regno);
	
	int insert(ClassReg classReg);
	
	int delete(Long regno);
}
