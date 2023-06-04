package com.acorn.apex.model;

public class infoDataDTO {

	String datavalue;
	String dataname;
	public String getDatavalue() {
		return datavalue;
	}
	public void setDatavalue(String datavalue) {
		this.datavalue = datavalue;
	}
	public String getDataname() {
		return dataname;
	}
	public void setDataname(String dataname) {
		this.dataname = dataname;
	}
	@Override
	public String toString() {
		return "infoDataDTO [datavalue=" + datavalue + ", dataname=" + dataname + "]";
	}
	public infoDataDTO(String datavalue, String dataname) {
		super();
		this.datavalue = datavalue;
		this.dataname = dataname;
	}
	public infoDataDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
