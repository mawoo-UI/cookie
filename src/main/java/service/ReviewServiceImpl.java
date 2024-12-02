package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import mapper.AttachMapper;
import mapper.ReviewMapper;
import utils.MybatisInit;
import vo.Review;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class ReviewServiceImpl implements ReviewService {
	@Getter
	private static ReviewService instance = new ReviewServiceImpl();
	
	@Override
	public List<Review> list() {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.selectList();
		}
	}

	@Override
	public Review findBy(Long reno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			
			Review review = mapper.selectOne(reno);
			review.setAttachs(attachMapper.selectReviewList(reno));
			return review;
		}
	}

	@Override
	public int write(Review review) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			AttachMapper attachMapper = session.getMapper(AttachMapper.class);
			
			mapper.insert(review);
			review.getAttachs().forEach(a -> {
				a.setReno(review.getReno());
				attachMapper.insert(a);
			});
			
			return 1;
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
	public List<Review> findReviews(Long cbno, Long reno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.getReviews(cbno, reno);
		}
	}

	@Override
	public int count(Long cbno) {
		try(SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			ReviewMapper mapper = session.getMapper(ReviewMapper.class);
			return mapper.getCount(cbno);
		}
	}
}
