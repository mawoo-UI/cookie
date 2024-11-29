package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import vo.Ajegag;

public interface AjeMapper {
	@Insert("insert into tbl_ajegag(quiz, answer) value(#{quiz}, #{answer})")
	int insert(Ajegag ajegag);
	
	@Select("select * from tbl_ajegag where ajno = #{ajno}")
	Ajegag selectOne(Integer ajno);
	
	@Select("select * from tbl_ajegag order by rand() limit 1")
	Ajegag selectRand();
}
