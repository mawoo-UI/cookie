package servlet.member;

import at.favre.lib.crypto.bcrypt.BCrypt;

public class BcryptTest {
	public static void main(String[] args) {
		String password = "1234";
		String wrongPassword = "1235";
		String bcryptHashString = BCrypt.withDefaults().hashToString(15, password.toCharArray());
		System.out.println(bcryptHashString);
		// $2a$15$5OhWAR4VFT1a5waWoUpNe.djjyfeHUDMZ2RolTgyMcDDDGuyBT6xO
		
		// $2a$15$9SGmP682z/tWpYLsff0C6OE9e4VDGEhjthDLQdGw7yTHfZEc.gEOu
		BCrypt.Result result = BCrypt.verifyer().verify("1234".toCharArray(), "$2a$15$9SGmP682z/tWpYLsff0C6OE9e4VDGEhjthDLQdGw7yTHfZEc.gEOu");
		System.out.println(result.verified);
		
	}
}
