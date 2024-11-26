package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.ClassSubjectMapper;
import utils.MybatisInit;
import vo.ClassSubject;

public class ClassSubjectServiceImpl implements ClassSubjectService {

	@Override
	public List<ClassSubject> list() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassSubjectMapper mapper = session.getMapper(ClassSubjectMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public ClassSubject findBy(Long sno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassSubjectMapper mapper = session.getMapper(ClassSubjectMapper.class);
			return mapper.selectOne(sno);
		}
	}

	@Override
	public int write(ClassSubject classSubject) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassSubjectMapper mapper = session.getMapper(ClassSubjectMapper.class);
			return mapper.insert(classSubject);
		}
	}

	@Override
	public int remove(Long sno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassSubjectMapper mapper = session.getMapper(ClassSubjectMapper.class);
			return mapper.delete(sno);
		}
	}

}