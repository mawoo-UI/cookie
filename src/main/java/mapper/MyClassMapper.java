package mapper;

import java.util.List;

import vo.MyClass;

public interface MyClassMapper {
	List<MyClass> selectList(String id);
	
	List<MyClass> OpenedByMe(String id);
	
	List<MyClass> takenClasses(String id);
	
	MyClass selectOne(Long ccno, String id);
	
	int insert(MyClass myClass);
	
	int delete(Long ccno, String id);
}
