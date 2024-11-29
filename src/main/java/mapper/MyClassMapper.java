package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.MyClass;

public interface MyClassMapper {
	List<MyClass> selectList(String id);
	
	List<MyClass> OpenedByMe(String id);
	
	List<MyClass> takenClasses(String id);
	
	MyClass selectOne(@Param("ccno")Long ccno, @Param("id")String id);
	
	int insert(MyClass myClass);
	
	int delete(@Param("ccno")Long ccno, @Param("id")String id);
}
