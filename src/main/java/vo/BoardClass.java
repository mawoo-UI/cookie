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
	private int max;
	private int price;
	private String location;
	private String dutime;
	
	private double avgStar; 
}
