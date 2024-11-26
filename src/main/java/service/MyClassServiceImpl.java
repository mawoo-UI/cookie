package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.MyClassMapper;
import utils.MybatisInit;
import vo.MyClass;

public class MyClassServiceImpl implements MyClassService {

	@Override
	public List<MyClass> list(String id) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MyClassMapper mapper = session.getMapper(MyClassMapper.class);
			return mapper.selectList(id);
		}
	}

	@Override
	public List<MyClass> openedMyList(String id) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MyClassMapper mapper = session.getMapper(MyClassMapper.class);
			return mapper.OpenedByMe(id);
		}
	}

	@Override
	public List<MyClass> takenMyList(String id) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MyClassMapper mapper = session.getMapper(MyClassMapper.class);
			return mapper.takenClasses(id);
		}
	}

	@Override
	public MyClass findBy(Long ccno, String id) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MyClassMapper mapper = session.getMapper(MyClassMapper.class);
			return mapper.selectOne(ccno, id);
		}
	}

	@Override
	public int write(MyClass myClass) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MyClassMapper mapper = session.getMapper(MyClassMapper.class);
			return mapper.insert(myClass);
		}
	}

	@Override
	public int delete(Long ccno, String id) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MyClassMapper mapper = session.getMapper(MyClassMapper.class);
			return mapper.delete(ccno, id);
		}
	}

}