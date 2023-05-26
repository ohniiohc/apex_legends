package com.acorn.apex.Model;

public class MapsDTO {
	
	String id;
	String name;
	String par;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPar() {
		return par;
	}
	public void setPar(String par) {
		this.par = par;
	}
	
	public MapsDTO() {
		// TODO Auto-generated constructor stub
	}
	public MapsDTO(String id, String name, String par) {
		super();
		this.id = id;
		this.name = name;
		this.par = par;
	}
	
	@Override
	public String toString() {
		return "MapsDTO [id=" + id + ", name=" + name + ", par=" + par + "]";
	}
	
}
