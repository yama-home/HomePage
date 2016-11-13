package net.hyunny333.domain;

import java.util.Date;

public class PortfolioVO {
	private int idx;
	private String title;
	private String content;
	private Date regdate;

	//Getter
	public int getIdx() {
		return idx;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public Date getRegdate() {
		return regdate;
	}

	//Setter
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
