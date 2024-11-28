package vo;

import java.util.Date;

import lombok.Builder;
import lombok.Data;
import lombok.ToString;

@Data
@Builder()
@ToString(exclude = "pw")
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
	
	private Long test;
	
	public static void main(String[] args) {
		Member m = Member.builder().build();
		System.out.println(m);
		Member[] members = {};
		
		int[] arr = {1,2,3,4};
	}
}
