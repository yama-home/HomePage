package net.hyunny333.domain;

import java.util.Date;

public class MemberVO {
	private int idx;
	private String userid;
	private String userpw;
	private String username;
	private String email;
	private Date regdate;
	private String emailCertifiedCode;

	//Getter
	public int getIdx() {
		return idx;
	}
	public String getUserid() {
		return userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public String getUsername() {
		return username;
	}
	public String getEmail() {
		return email;
	}
	public Date getRegdate() {
		return regdate;
	}
	public String getEmailCertifiedCode() {
		return emailCertifiedCode;
	}

	//Setter
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public void setEmailCertifiedCode(String emailCertifiedCode) {
		this.emailCertifiedCode = emailCertifiedCode;
	}
}
