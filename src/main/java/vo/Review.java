package vo;

import java.util.Date;
import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Review {
	private Long reno;
	private String content;
	private String writer;
	private int score;
	private Date regdate;
	private Date updatedate;
	private Long ccno;
}
