package net.hyunny333.dto;

public class LoginDTO {
	private String userid;
	private String userpw;
	private boolean useCookie;

	//Getter
	public String getUserid() {
		return userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public boolean isUseCookie() {
		return useCookie;
	}

	//Setter
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
}
