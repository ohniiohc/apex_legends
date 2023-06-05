package com.acorn.Apex.Dto;

public class Board_WritingDto {
	
	String title;
	String content;
	String id;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Board_WritingDto(String title, String content, String id) {
		super();
		this.title = title;
		this.content = content;
		this.id = id;
	}
	public Board_WritingDto() {
		super();
	}
	@Override
	public String toString() {
		return "Board_WritingDto [title=" + title + ", content=" + content + ", id=" + id + "]";
	}
	

}
