package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.ClassRegMapper;
import utils.MybatisInit;
import vo.ClassReg;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ClassRegServiceImpl implements ClassRegService {
	@Getter
	private static ClassRegService instance = new ClassRegServiceImpl();

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
