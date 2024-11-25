package mapper;

import java.util.List;

import vo.Review;

public interface ReviewMapper {
	List<Review> selectList();
	
	Review selectOne(Long reno);
	
	int insert(Review review);
	
	int update(Review review);
	
	int delete(Long reno);
}
