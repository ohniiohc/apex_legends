package com.acorn.apex.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;


public class WeaponsSearchDto {
    private String name;
    private String img;
    
    public WeaponsSearchDto(String name, String img) {
        this.name = name;
        this.img = img;
    }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "WeaponsSearchDto [name=" + name + ", img=" + img + "]";
	}
    
}

