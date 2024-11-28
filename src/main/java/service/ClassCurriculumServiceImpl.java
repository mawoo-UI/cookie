package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.ClassCurriculumMapper;
import utils.MybatisInit;
import vo.ClassCurriculum;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ClassCurriculumServiceImpl implements ClassCurriculumService{
	@Getter
	private static ClassCurriculumService instance = new ClassCurriculumServiceImpl();
	
	@Override
	public List<ClassCurriculum> list() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public ClassCurriculum findBy(Long ccno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.selectOne(ccno);
		}
	}

	@Override
	public int write(ClassCurriculum classCurriculum) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.insert(classCurriculum);
		}
	}

	@Override
	public int delete(Long ccno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.delete(ccno);
		}
	}

	@Override
	public List<ClassCurriculum> boardList(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.selectBoardList(cbno);
		}
	}

	@Override
	public ClassCurriculum boardOne(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.selectBoardOne(cbno);
		}
	}

	@Override
	public ClassCurriculum findByStartdateAndCbno(String startdate, Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ClassCurriculumMapper mapper = session.getMapper(ClassCurriculumMapper.class);
			return mapper.selectOneByStartdate(startdate, cbno);
		}
	}


}
