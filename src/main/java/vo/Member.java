package vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Member {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private Date birth;
	private String addr;
	private String detail_addr;
	private Date regdate;
	private Date updatedate;
	private boolean black_list;
	private boolean admin;
	private boolean email_check;
	private boolean marketing_agree;
	private String nick;
}
