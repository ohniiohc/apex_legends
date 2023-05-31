package com.acorn.apex.Model;

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
	    private List<LegendDataDTO> legendDataList;
	    private String allchamp;
	    
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
		public List<LegendDataDTO> getLegendDataList() {
			return legendDataList;
		}
		public void setLegendDataList(List<LegendDataDTO> legendDataList) {
			this.legendDataList = legendDataList;
		}
		public String getAllchamp() {
			return allchamp;
		}
		public void setAllchamp(String allchamp) {
			this.allchamp = allchamp;
		}
		@Override
		public String toString() {
			return "ApexLegendsDTO [name=" + name + ", avatar=" + avatar + ", platform=" + platform + ", level=" + level
					+ ", rankScore=" + rankScore + ", rankName=" + rankName + ", rankImg=" + rankImg + ", legendName="
					+ legendName + ", legendDataList=" + legendDataList + ", allchamp=" + allchamp + "]";
		}
	
		public ApexApiDto() {
			super();
			// TODO Auto-generated constructor stub
		}
		public ApexApiDto(String name, String avatar, String platform, int level, int rankScore, String rankName,
				String rankImg, String legendName, List<LegendDataDTO> legendDataList, String allchamp) {
			super();
			this.name = name;
			this.avatar = avatar;
			this.platform = platform;
			this.level = level;
			this.rankScore = rankScore;
			this.rankName = rankName;
			this.rankImg = rankImg;
			this.legendName = legendName;
			this.legendDataList = legendDataList;
			this.allchamp = allchamp;
		}
	   
	    
	    
		
		
	   
	}