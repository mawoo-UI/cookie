package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.ClassRegMapper;
import utils.MybatisInit;
import vo.ClassReg;

public class ClassRegServiceImpl implements ClassRegService {

	@Override
	public List<ClassReg> list() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassRegMapper mapper = session.getMapper(ClassRegMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public ClassReg findBy(Long regno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassRegMapper mapper = session.getMapper(ClassRegMapper.class);
			return mapper.selectOne(regno);
		}
	}

	@Override
	public int write(ClassReg classReg) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassRegMapper mapper = session.getMapper(ClassRegMapper.class);
			return mapper.insert(classReg);
		}
	}

	@Override
	public int remove(Long regno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassRegMapper mapper = session.getMapper(ClassRegMapper.class);
			return mapper.delete(regno);
		}
	}

}
