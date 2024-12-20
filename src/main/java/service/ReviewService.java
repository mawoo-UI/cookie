package service;

import java.util.List;

import vo.Review;

public interface ReviewService {
	List<Review> list();
	
	Review findBy(Long reno);
	
	Double score(Long cbno);
	
	List<Review> findReviews(Long cbno, Long reno);
	
	int count(Long cbno);
	
	int write(Review review);
	
	int modify(Review review);
	
	int remove(Long reno);
}
