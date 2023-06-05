package com.acorn.webchat;

public class boardlistDTO {
    private int id;
    private String title;
    private String writer;
    private int views;
    private int likes;

 
    public boardlistDTO() {
    }

    public boardlistDTO(String title, String writer, int views, int likes) {
        this.title = title;
        this.writer = writer;
        this.views = views;
        this.likes = likes;
    }

   
    public int getId() {
        return id;
    }

    public void setId(int id) {
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
}
