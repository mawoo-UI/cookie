package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.Review;

public interface ReviewMapper {
	List<Review> selectList();
	
	Review selectOne(Long reno);
	
	Double calcScore(Long cbno);
	
	List<Review> getReviews(@Param("cbno")Long cbno, @Param("reno")Long reno);
	
	int getCount(Long cbno);
	
	int insert(Review review);
	
	int update(Review review);
	
	int delete(Long reno);
}
