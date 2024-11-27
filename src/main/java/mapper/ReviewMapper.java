package mapper;

import java.util.List;

import vo.Review;

public interface ReviewMapper {
	List<Review> selectList();
	
	Review selectOne(Long reno);
	
	Double calcScore(Long cbno);
	
	List<Review> getReviews(Long cbno);
	
	int insert(Review review);
	
	int update(Review review);
	
	int delete(Long reno);
}
