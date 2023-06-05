package com.acorn.Apex.Dto;

public class LegendDataDTO {
    private String name;
    private int value;
    private String key;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	
	
	@Override
	public String toString() {
		return "LegendDataDTO [name=" + name + ", value=" + value + ", key=" + key + "]";
	}
	public LegendDataDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LegendDataDTO(String name, int value, String key) {
		super();
		this.name = name;
		this.value = value;
		this.key = key;
	}
	
}