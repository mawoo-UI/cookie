package vo;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class BoardCategory {

//	private Long pno;
//	private String title;
//	private String content;
//	private String writer;
//	private Long likes;
//	private Long view_count;
	private Long con;
	private String cname;
	private Date regdate;
//	private Date updatedate;
	
//	@Builder.Default
//	public Post_category(Long con, String cname, Date regdate) {
//		this.con = con;
//		this.cname = cname;
//		this.regdate = regdate;
//		
//	}
//		
	
}
