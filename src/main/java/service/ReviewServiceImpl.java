package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.ReviewMapper;
import utils.MybatisInit;
import vo.Review;

public class ReviewServiceImpl implements ReviewService {

	@Override
	public List<Review> list() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public Review findBy(Long regno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.selectOne(regno);
		}
	}

	@Override
	public int write(Review review) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.insert(review);
		}
	}

	@Override
	public int modify(Review review) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.update(review);
		}
	}

	@Override
	public int remove(Long reno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.delete(reno);
		}
	}

	@Override
	public Double score(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.calcScore(cbno);
		}
	}

	@Override
	public List<Review> findReviews(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.getReviews(cbno);
		}
	}
}
