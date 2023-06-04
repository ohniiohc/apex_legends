package com.acorn.apex.model;

import java.util.List;

public class ApexApiDto {


	    private String name;
	    private String avatar;
	    private String platform;
	    private int level;
	    private int rankScore;
	    private String rankName;
	    private String rankImg;
	    private String legendName;
	    private List<SelectDto> selecteddata;
	    private List<LegendInfoDTO> legendInfo;
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getAvatar() {
			return avatar;
		}
		public void setAvatar(String avatar) {
			this.avatar = avatar;
		}
		public String getPlatform() {
			return platform;
		}
		public void setPlatform(String platform) {
			this.platform = platform;
		}
		public int getLevel() {
			return level;
		}
		public void setLevel(int level) {
			this.level = level;
		}
		public int getRankScore() {
			return rankScore;
		}
		public void setRankScore(int rankScore) {
			this.rankScore = rankScore;
		}
		public String getRankName() {
			return rankName;
		}
		public void setRankName(String rankName) {
			this.rankName = rankName;
		}
		public String getRankImg() {
			return rankImg;
		}
		public void setRankImg(String rankImg) {
			this.rankImg = rankImg;
		}
		public String getLegendName() {
			return legendName;
		}
		public void setLegendName(String legendName) {
			this.legendName = legendName;
		}
		public List<SelectDto> getSelecteddata() {
			return selecteddata;
		}
		public void setSelecteddata(List<SelectDto> selecteddata) {
			this.selecteddata = selecteddata;
		}
		public List<LegendInfoDTO> getLegendInfo() {
			return legendInfo;
		}
		public void setLegendInfo(List<LegendInfoDTO> legendInfo) {
			this.legendInfo = legendInfo;
		}
		@Override
		public String toString() {
			return "ApexApiDto [name=" + name + ", avatar=" + avatar + ", platform=" + platform + ", level=" + level
					+ ", rankScore=" + rankScore + ", rankName=" + rankName + ", rankImg=" + rankImg + ", legendName="
					+ legendName + ", selecteddata=" + selecteddata + ", legendInfo=" + legendInfo + "]";
		}
		public ApexApiDto(String name, String avatar, String platform, int level, int rankScore, String rankName,
				String rankImg, String legendName, List<SelectDto> selecteddata, List<LegendInfoDTO> legendInfo) {
			super();
			this.name = name;
			this.avatar = avatar;
			this.platform = platform;
			this.level = level;
			this.rankScore = rankScore;
			this.rankName = rankName;
			this.rankImg = rankImg;
			this.legendName = legendName;
			this.selecteddata = selecteddata;
			this.legendInfo = legendInfo;
		}
		public ApexApiDto() {
			super();
			// TODO Auto-generated constructor stub
		}

	    
		
}