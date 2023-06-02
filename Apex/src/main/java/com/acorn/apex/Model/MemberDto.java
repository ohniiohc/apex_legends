package com.acorn.apex.Model;

public class MemberDto {
	String user_number;
	String name;
	String id;
	String pw;
	String email;
	String sex;
	public String getUser_number() {
		return user_number;
	}
	public void setUser_number(String user_number) {
		this.user_number = user_number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public MemberDto(String user_number, String name, String id, String pw, String email, String sex) {
		super();
		this.user_number = user_number;
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.sex = sex;
	}
	public MemberDto() {
		super();
	}
	
	public MemberDto(String name, String id, String pw, String email, String sex) {
		super();
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.sex = sex;
	}
	@Override
	public String toString() {
		return "MemberDto [user_number=" + user_number + ", name=" + name + ", id=" + id + ", pw=" + pw + ", email="
				+ email + ", sex=" + sex + "]";
	}
	

	
}
