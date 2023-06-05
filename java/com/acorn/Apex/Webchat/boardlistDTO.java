package com.acorn.Apex.Webchat;

public class boardlistDTO {
    private String id;
    private String title;
    private String writer;
    private int views;
    private int likes;

 
    public boardlistDTO() {
    }


	public boardlistDTO(String id, String title, String writer, int views, int likes) {
		super();
		this.id = id;
		this.title = title;
		this.writer = writer;
		this.views = views;
		this.likes = likes;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getWriter() {
		return writer;
	}


	public void setWriter(String writer) {
		this.writer = writer;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public int getLikes() {
		return likes;
	}


	public void setLikes(int likes) {
		this.likes = likes;
	}


	@Override
	public String toString() {
		return "boardlistDTO [id=" + id + ", title=" + title + ", writer=" + writer + ", views=" + views + ", likes="
				+ likes + "]";
	}


}
