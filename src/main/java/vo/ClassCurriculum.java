package vo;
import java.util.Date;

import lombok.*;
import utils.CookieDateFormat;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ClassCurriculum {
	private Long ccno;
	private String lname;
	private String host;
	@CookieDateFormat
	private Date startdate;
	private Date regdate;
	private int max;
	private int price;
	private String location;
	private Long cbno;
	private String dutime;
	
	private double avgStar;
}
