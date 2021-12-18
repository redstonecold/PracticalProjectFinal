package com.mycompany.myapp.post;
import java.util.Date;





public class PostVO { //list 에 들어갈 수 있는 하나의 정보라고 볼 수 있다. 데이터 베이스 한 줄에 들어가기 전 저장하는 정보들(?)
	private String name;//물건의 이름으로 볼 수 있다 d
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public Boolean getFound() {
		return found;
	}
	public void setFound(Boolean found) {
		this.found = found;
	}
	public String getFileURL() {
		return fileURL;
	}
	public void setFileURL(String fileURL) {
		this.fileURL = fileURL;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String writer;
	private String title;
	private String content;
	private Date regdate;
	private String place;
	private String phone_number;
	private Boolean found;
	private String fileURL;
	private int cnt;
	private int	id;
	
	/*
	@Override
	public String toString() {
		return "BoardVO [category=" + category + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regdate=" + regdate + ", cnt=" + cnt + ", seq=" + seq + "]";
	}
	*/
	

}

