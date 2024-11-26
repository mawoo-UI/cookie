package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Criteria;
import mapper.BoardMapper;
import utils.MybatisInit;
import vo.Board;

public class BoardServiceImpl implements BoardService {


	@Override
	public int write(Board post) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			System.out.println(post);
			return mapper.insert(post);
		}
	}

	@Override
	public int modify(Board post) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.update(post);
		}
	}

	@Override
	public int remove(Long pno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.delete(pno);
		}
	}

	@Override
	public Board findBy(Long pno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.selectOne(pno);
		}
	}

	@Override
	public List<Board> list(Criteria cri) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.selectList(cri);
		}
	}
	
	@Override
	public int count(Criteria cri) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.getCount(cri);
		}
	}

	@Override
	public Board view(Long pno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			mapper.increaseViewCount(pno);
			return mapper.selectOne(pno);
		}
	}
	
	


}
