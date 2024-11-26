package service;

import java.util.List;

import vo.Review;

public interface ReviewService {
	List<Review> list();
	
	Review findBy(Long regno);
	
	int write(Review review);
	
	int modify(Review review);
	
	int remove(Long reno);
}