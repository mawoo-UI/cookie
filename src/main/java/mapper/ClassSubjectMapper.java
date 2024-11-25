package mapper;

import java.util.List;

import vo.ClassSubject;

public interface ClassSubjectMapper {
	List<ClassSubject> selectList();
	
	ClassSubject selectOne(Long sno);
	
	int insert(ClassSubject classSubject);
	
	int delete(Long sno);
}
