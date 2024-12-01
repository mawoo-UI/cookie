package vo;

import java.util.Date;

import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BoardClass {
	private Long cbno;
	private String title;
	private String content;
	private String host;
	private Long viewCount;
	private Date regdate;
	private Date updatedate;
	private boolean end;
	private boolean accept;
	
	private double avgStar; 
}
