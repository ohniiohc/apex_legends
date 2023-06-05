package com.acorn.Apex.Dto;

public class LegendsDTO {
	
	String id;
	String job;
	String name;
	String l_class;
	String tac;
	String pas;
	String ult;
	String tac_con;
	String pas_con;
	String ult_con;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getL_class() {
		return l_class;
	}
	public void setL_class(String l_class) {
		this.l_class = l_class;
	}
	public String getTac() {
		return tac;
	}
	public void setTac(String tac) {
		this.tac = tac;
	}
	public String getPas() {
		return pas;
	}
	public void setPas(String pas) {
		this.pas = pas;
	}
	public String getUlt() {
		return ult;
	}
	public void setUlt(String ult) {
		this.ult = ult;
	}
	public String getTac_con() {
		return tac_con;
	}
	public void setTac_con(String tac_con) {
		this.tac_con = tac_con;
	}
	public String getPas_con() {
		return pas_con;
	}
	public void setPas_con(String pas_con) {
		this.pas_con = pas_con;
	}
	public String getUlt_con() {
		return ult_con;
	}
	public void setUlt_con(String ult_con) {
		this.ult_con = ult_con;
	}
	
	public LegendsDTO() {
		// TODO Auto-generated constructor stub
	}
	public LegendsDTO(String id, String job, String name, String l_class, String tac, String pas, String ult,
			String tac_con, String pas_con, String ult_con) {
		super();
		this.id = id;
		this.job = job;
		this.name = name;
		this.l_class = l_class;
		this.tac = tac;
		this.pas = pas;
		this.ult = ult;
		this.tac_con = tac_con;
		this.pas_con = pas_con;
		this.ult_con = ult_con;
	}
	
	@Override
	public String toString() {
		return "LegendsDTO [id=" + id + ", job=" + job + ", name=" + name + ", l_class=" + l_class + ", tac=" + tac
				+ ", pas=" + pas + ", ult=" + ult + ", tac_con=" + tac_con + ", pas_con=" + pas_con + ", ult_con="
				+ ult_con + "]";
	}
	
}
