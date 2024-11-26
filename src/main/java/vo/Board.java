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
public class Board {

	private Long pno; 
	private String title;
	private String content;
	private String writer;
	private Long likes;
	private Long viewCount;
	private Date regdate;
	private Date updatedate;
	private int cno;
	
//	@Builder.Default
//	private List<Attach>
	public Board(Long pno, String title, String content, String writer, Long likes, Long view_count, Date regdate,
			int cno) {
		this.pno = pno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.likes = likes;
		this.viewCount = view_count;
		this.regdate = regdate;
		this.cno = cno;
		
	}
	
}
