package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import vo.Favorite;

public interface FavoriteMapper {
	List<Favorite> selectListById(String memberId);
	
	List<Favorite> selectListByCcno(Long cbno);
	
	Favorite selectOne(@Param("cbno")Long cbno, @Param("memberId")String memberId);
	
	int insert(Favorite favorite);
	
	int delete(@Param("cbno")Long cbno, @Param("memberId")String memberId);
}
