package service;

import org.apache.ibatis.session.SqlSession;

import mapper.BoardLikesMapper;
import mapper.BoardMapper;
import utils.MybatisInit;
import vo.BoardLikes;

public class BoardLikesServiceImpl implements BoardLikesService {


	@Override
	public BoardLikes findBy(BoardLikes boardLikes) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardLikesMapper mapper = session.getMapper(BoardLikesMapper.class);
			return mapper.selectOne(boardLikes);
		}
	}

	@Override
	public boolean toggleLikes(BoardLikes boardLikes) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardLikesMapper mapper = session.getMapper(BoardLikesMapper.class);
			BoardMapper boardMapper = session.getMapper(BoardMapper.class);
			boolean result = mapper.selectOne(boardLikes) == null;
			if(result) {
				mapper.insert(boardLikes);
				boardMapper.changeLikes(1, boardLikes.getPno());
			}
			else {
//				delete
				mapper.delete(boardLikes);
				boardMapper.changeLikes(-1, boardLikes.getPno());
			}
			
			return result;
		}
	}


}
