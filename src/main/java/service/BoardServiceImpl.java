package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Criteria;
import mapper.AttachMapper;
import mapper.BoardLikesMapper;
import mapper.BoardMapper;
import utils.MybatisInit;
import vo.Board;
import vo.BoardLikes;

public class BoardServiceImpl implements BoardService {


	@Override
	public int write(Board post) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			System.out.println(post);
			mapper.insert(post);
			 
			System.out.println(post);
			post.getAttachs().forEach(a -> {
				a.setPno(post.getPno());
				attachMapper.insert(a);
			});
			 return 1;
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
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			BoardLikesMapper boardLikesMapper = session.getMapper(BoardLikesMapper.class);
			attachMapper.delete(pno);
			boardLikesMapper.deleteAll(pno);
			
			return mapper.delete(pno);
		}
	}

	@Override
	public Board findBy(Long pno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			Board board = mapper.selectOne(pno);
			board.setAttachs(attachMapper.selectList(pno));
			return board;
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
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			mapper.increaseViewCount(pno);
			Board board = mapper.selectOne(pno);
			board.setAttachs(attachMapper.selectList(pno));
			return board;
		}
	}

	@Override
	public List<Board> listLikes() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.selectLikesList();
		}
	}

	@Override
	public List<Board> listLikesBy(Criteria cri) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.selectLikesListBy(cri, 2);
		}
	}
	
	@Override
	public Board getLatestEvent() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardMapper mapper = session.getMapper(BoardMapper.class);
			return mapper.selectMaxEvent();
		}
	}
	
	


}
