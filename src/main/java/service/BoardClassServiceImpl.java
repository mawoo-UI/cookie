package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Criteria;
import mapper.BoardClassMapper;
import utils.MybatisInit;
import vo.BoardClass;

public class BoardClassServiceImpl implements BoardClassService {

	@Override
	public List<BoardClass> listAll() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public BoardClass findBy(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.selectOne(cbno);
		}
	}

	@Override
	public BoardClass view(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			BoardClass boardClass = findBy(cbno);
			mapper.increaseViewCount(cbno);
			return boardClass;
		}
	}

	@Override
	public int write(BoardClass boardClass) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.insert(boardClass);
		}
	}

	@Override
	public int remove(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.delete(cbno);
		}
	}

	@Override
	public int modify(BoardClass boardClass) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.update(boardClass);
		}
	}

	@Override
	public List<BoardClass> listShow(Criteria cri) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.showList(cri);
		}
	}

	@Override
	public List<BoardClass> listTrend() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardClassMapper mapper = session.getMapper(BoardClassMapper.class);
			return mapper.trendList();
		}
	}

}
