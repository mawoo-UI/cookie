package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.BoardCategoryMapper;
import mapper.BoardMapper;
import utils.MybatisInit;
import vo.BoardCategory;

public class BoardCategoryServiceImpl implements BoardCategoryService{

	@Override
	public List<BoardCategory> list() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardCategoryMapper mapper = session.getMapper(BoardCategoryMapper.class);
			return mapper.selectList();
		}
	}

	@Override	
	public BoardCategory findBy(Integer cno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			BoardCategoryMapper mapper = session.getMapper(BoardCategoryMapper.class);
			return mapper.selectOne(cno);
		}
	}
	
}
