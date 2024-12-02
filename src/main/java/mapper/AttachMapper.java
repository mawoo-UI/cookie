package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import vo.Attach;

public interface AttachMapper {
	@Insert("insert into tbl_attach values(#{uuid}, #{origin}, #{path}, #{image}, #{pno}, #{cbno}, #{reno})")
	int insert(Attach attach);
	
	@Select("select * from tbl_attach where pno = #{pno}")
	List<Attach> selectList (Long pno);
	
	@Select("select * from tbl_attach where cbno = #{cbno}")
	List<Attach> selectClassList(Long cbno);
	
	@Select("select * from tbl_attach where reno = #{reno}")
	List<Attach> selectReviewList(Long reno);
	
	@Delete("delete from tbl_attach where pno = #{pno}")
	int delete(Long pno);
}
