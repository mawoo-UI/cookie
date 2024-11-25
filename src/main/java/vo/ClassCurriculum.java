package vo;
import java.util.Date;

import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ClassCurriculum {
	private Long ccno;
	private String lname;
	private String host;
	private Date startdate;
	private Date regdate;
	private int maxEntry;
	private int price;
	private String location;
}
