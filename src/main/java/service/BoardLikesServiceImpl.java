package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Criteria;
import mapper.BoardLikesMapper;
import mapper.BoardMapper;
import utils.MybatisInit;
import vo.Board;
import vo.BoardLikes;

public class BoardLikesServiceImpl implements BoardLikesService {


	@Override
	public List<BoardLikes> list(Long pno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardLikesMapper mapper = session.getMapper(BoardLikesMapper.class);
			return mapper.selectList(pno);
		}
	}


}
