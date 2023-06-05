package com.acorn.Apex.Dto;

import java.util.List;

public class LegendInfoDTO {

	
	String legendname;
	ImgAssetsDTO ImgAssets;
	 List<LegendDataDTO> data;
	public String getLegendname() {
		return legendname;
	}
	public void setLegendname(String legendname) {
		this.legendname = legendname;
	}
	public ImgAssetsDTO getImgAssets() {
		return ImgAssets;
	}
	public void setImgAssets(ImgAssetsDTO imgAssets) {
		ImgAssets = imgAssets;
	}
	public List<LegendDataDTO> getData() {
		return data;
	}
	public void setData(List<LegendDataDTO> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "LegendInfoDTO [legendname=" + legendname + ", ImgAssets=" + ImgAssets + ", data=" + data + "]";
	}
	public LegendInfoDTO(String legendname, ImgAssetsDTO imgAssets, List<LegendDataDTO> data) {
		super();
		this.legendname = legendname;
		ImgAssets = imgAssets;
		this.data = data;
	}
	public LegendInfoDTO(String legendname, ImgAssetsDTO imgAssets) {
		super();
		this.legendname = legendname;
		this.ImgAssets = imgAssets;
	}
	
	 
}
