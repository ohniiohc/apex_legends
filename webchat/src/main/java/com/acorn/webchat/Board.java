package com.acorn.webchat;

import java.util.Date;

public class Board {
    private String title;
    private String postId;
    private String id;
    private String content;
    private int views;
    private int up;
    private Date writeDate;
    
    // 생성자
    public Board(String title, String postId, String id, String content, int views, int up, Date writeDate) {
        this.title = title;
        this.postId = postId;
        this.id = id;
        this.content = content;
        this.views = views;
        this.up = up;
        this.writeDate = writeDate;
    }
    
    public Board() {
		// TODO Auto-generated constructor stub
	}

	// Getter 메서드
    public String getTitle() {
        return title;
    }
    
    public String getPostId() {
        return postId;
    }
    
    public String getId() {
        return id;
    }
    
    public String getContent() {
        return content;
    }
    
    public int getViews() {
        return views;
    }
    
    public int getUp() {
        return up;
    }
    
    public Date getWriteDate() {
        return writeDate;
    }
    
    // Setter 메서드
    public void setTitle(String title) {
        this.title = title;
    }
    
    public void setPostId(String postId) {
        this.postId = postId;
    }
    
    public void setId(String id) {
        this.id = id;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    
    public void setViews(int views) {
        this.views = views;
    }
    
    public void setUp(int up) {
        this.up = up;
    }
    
    public void setWriteDate(Date writeDate) {
        this.writeDate = writeDate;
    }

	@Override
	public String toString() {
		return "Board [title=" + title + ", postId=" + postId + ", id=" + id + ", content=" + content + ", views="
				+ views + ", up=" + up + ", writeDate=" + writeDate + "]";
	}
    
    
    
}

