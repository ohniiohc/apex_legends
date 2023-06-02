package com.acorn.webchat;

public class CommentDTO {
	
	String c_id;
    String c_con;
	String u_id;
	String b_id;
	
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_con() {
		return c_con;
	}
	public void setC_con(String c_con) {
		this.c_con = c_con;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	
	public CommentDTO() {
		// TODO Auto-generated constructor stub
	}
	public CommentDTO(String c_id, String c_con, String u_id, String b_id) {
		super();
		this.c_id = c_id;
		this.c_con = c_con;
		this.u_id = u_id;
		this.b_id = b_id;
	}
	
	@Override
	public String toString() {
		return "TmpCommentDTO [c_id=" + c_id + ", c_con=" + c_con + ", u_id=" + u_id + ", b_id=" + b_id + "]";
	}
	
}
