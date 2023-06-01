package com.acorn.webchat;

import java.util.Date;

public class Board


{
    private String title;
    private String content;
    private String image;
    private String writer;
    private Date writeDate;
   
	
	public Board(String title, String content, String image, String writer, Date writeDate) {
		super();
		this.title = title;
		this.content = content;
		this.image = image;
		this.writer = writer;
		this.writeDate = writeDate;
	}


	@Override
	public String toString() {
		return "Board [title=" + title + ", content=" + content + ", image=" + image + ", writer=" + writer
				+ ", writeDate=" + writeDate + ", getTitle()=" + getTitle() + ", getContent()=" + getContent()
				+ ", getImage()=" + getImage() + ", getWriter()=" + getWriter() + ", getWriteDate()=" + getWriteDate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}


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


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public Date getWriteDate() {
		return writeDate;
	}


	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}


	public Board() {
		// TODO Auto-generated constructor stub
	}

   
}

