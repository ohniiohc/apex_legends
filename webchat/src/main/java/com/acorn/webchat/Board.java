package com.acorn.webchat;

public class Board


{
    private String title;
    private String content;
    private String image;
   
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "Board [title=" + title + ", content=" + content + ", image=" + image + ", getTitle()=" + getTitle()
				+ ", getContent()=" + getContent() + ", getImage()=" + getImage() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	public Board(String title, String content, String image) {
		super();
		this.title = title;
		this.content = content;
		this.image = image;
	}
	public Board() {
		// TODO Auto-generated constructor stub
	}

   
}

