package service;

import java.util.List;

import vo.MyClass;

public interface MyClassService {
	List<MyClass> list(String id);
	
	List<MyClass> openedMyList(String id);
	
	List<MyClass> takenMyList(String id);
	
	MyClass findBy(Long ccno, String id);
	
	int write(MyClass myClass);
	
	int delete(Long ccno, String id);
}
