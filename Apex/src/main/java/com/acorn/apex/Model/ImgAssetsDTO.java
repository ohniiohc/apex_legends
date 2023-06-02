package com.acorn.apex.Model;

public class ImgAssetsDTO {

	String icon;
	String banner;
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getBanner() {
		return banner;
	}
	public void setBanner(String banner) {
		this.banner = banner;
	}
	@Override
	public String toString() {
		return "ImgAssetsDto [icon=" + icon + ", banner=" + banner + "]";
	}
	public ImgAssetsDTO(String icon, String banner) {
		super();
		this.icon = icon;
		this.banner = banner;
	}
	public ImgAssetsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}