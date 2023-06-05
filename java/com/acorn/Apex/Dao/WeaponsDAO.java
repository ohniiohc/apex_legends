package com.acorn.Apex.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.Apex.Dto.WeaponsInfoDto;
import com.acorn.Apex.Dto.WeaponsSearchDto;
@Repository
public class WeaponsDAO {
	
	@Autowired
	DataSource ds;
	
	public ArrayList<WeaponsSearchDto> findType(String type) {
	    ArrayList<WeaponsSearchDto> list = new ArrayList<>();

	    try (
	    		
	    		Connection con = ds.getConnection();
	         PreparedStatement pst = con.prepareStatement("SELECT name, img FROM weapons WHERE type = ?")) {

	    	
	        pst.setString(1, type);

	        try (
	        		ResultSet rs = pst.executeQuery()
	        		) {
	            while (rs.next()) {
	                String name = rs.getString("name");
	                String img = rs.getString("img");

	                WeaponsSearchDto dto = new WeaponsSearchDto(name, img);
	                list.add(dto);
	            }
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
	public ArrayList<WeaponsInfoDto> findinfo(String name1) {
	    ArrayList<WeaponsInfoDto> list = new ArrayList<>();

	    try (
	    		
	    		Connection con = ds.getConnection();
	         PreparedStatement pst = con.prepareStatement("SELECT w.name, w.img, w.type, a.ammoimg, a.ammoname ,\n"
	         		+ "m.modeimg,m.modetype,m.modeimg2,m.modetype2,\n"
	         		+ "at.Attachment1,at.Attachment2,at.Attachment3,at.Attachment4,at.Attachment5,\n"
	         		+ "w.body,w.head,w.legs,w.rpm,w.dps,w.magazine,w.tac,w.full\n"
	         		+ "FROM Weapons w\n"
	         		+ "JOIN AmmoType a ON w.name = a.name\n"
	         		+ "join modeType m on w.name = m.name\n"
	         		+ "join AttachmentSlots at on w.name = at.name\n"
	         		+ "WHERE w.name = ? ")) {

	    	
	        pst.setString(1, name1);

	        try (
	        		ResultSet rs = pst.executeQuery()
	        		) {
	            while (rs.next()) {	
	            	String name = rs.getString("name");
	                String img = rs.getString("img");
	                String type = rs.getString("type");
	                String ammoimg = rs.getString("ammoimg");
	                String ammoname = rs.getString("ammoname");
	                String modeimg = rs.getString("modeimg");
	                String modetype = rs.getString("modetype");
	                String modeimg2 = rs.getString("modeimg2");
	                String modetype2 = rs.getString("modetype2");
	                String Attachment1 = rs.getString("Attachment1");
	                String Attachment2 = rs.getString("Attachment2");
	                String Attachment3 = rs.getString("Attachment3");
	                String Attachment4 = rs.getString("Attachment4");
	                String Attachment5 = rs.getString("Attachment5");
	                String body = rs.getString("body");
	                String head = rs.getString("head");
	                String legs = rs.getString("legs");
	                String rpm = rs.getString("rpm");
	                String dps = rs.getString("dps");
	                String magazine = rs.getString("magazine");
	                String tac = rs.getString("tac");
	                String full = rs.getString("full");

	            	WeaponsInfoDto dto = new WeaponsInfoDto(name,img,type,ammoimg,ammoname,modeimg,modetype,modeimg2,modetype2,
	            			Attachment1,Attachment2,Attachment3,Attachment4,Attachment5,body,head,legs,
	            			rpm,dps,magazine,tac,full);
	            	
	    
	                list.add(dto);
	            }
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return list;
	}
	
}
