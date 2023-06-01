package com.acorn.apex.Model;

public class TmpDTO {
	
	String b_id;
	String u_id;
	String b_title;
	String b_con;
	String r_cnt;
	
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_con() {
		return b_con;
	}
	public void setB_con(String b_con) {
		this.b_con = b_con;
	}
	public String getR_cnt() {
		return r_cnt;
	}
	public void setR_cnt(String r_cnt) {
		this.r_cnt = r_cnt;
	}
	
	public TmpDTO() {
		// TODO Auto-generated constructor stub
	}
	public TmpDTO(String b_id, String u_id, String b_title) {
		super();
		this.b_id = b_id;
		this.u_id = u_id;
		this.b_title = b_title;
	}
	public TmpDTO(String b_id, String u_id, String b_title, String b_con, String r_cnt) {
		super();
		this.b_id = b_id;
		this.u_id = u_id;
		this.b_title = b_title;
		this.b_con = b_con;
		this.r_cnt = r_cnt;
	}
	
	@Override
	public String toString() {
		return "TmpDTO [b_id=" + b_id + ", u_id=" + u_id + ", b_title=" + b_title + ", b_con=" + b_con + ", r_cnt="
				+ r_cnt + "]";
	}
	
}
