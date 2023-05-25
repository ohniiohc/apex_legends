package com.acorn.apex.Model;

public class LegendsDTO {
	
	String legends_class;
	String legends_nm;
	
	public String getLegends_class() {
		return legends_class;
	}

	public void setLegends_class(String legends_class) {
		this.legends_class = legends_class;
	}

	public String getLegends_nm() {
		return legends_nm;
	}

	public void setLegends_nm(String legends_nm) {
		this.legends_nm = legends_nm;
	}

	public LegendsDTO() {
		// TODO Auto-generated constructor stub
	}

	public LegendsDTO(String legends_class, String legends_nm) {
		super();
		this.legends_class = legends_class;
		this.legends_nm = legends_nm;
	}

	@Override
	public String toString() {
		return "LegendsDTO [legends_class=" + legends_class + ", legends_nm=" + legends_nm + "]";
	}
	
}
