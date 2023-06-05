package com.acorn.Apex.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.acorn.Apex.Dto.MapsDTO;

@Repository
public class MapsDAO {
	
	@Autowired
	DataSource ds;
	
	public ArrayList<String> selectAllMapsId() {
		
		ArrayList<String> list=new ArrayList<>();
		
		try {
			Connection con=ds.getConnection();
			String sql="select id from fuse_gg_maps";
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				list.add(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public MapsDTO selectMap(String id) {
		
		MapsDTO map=new MapsDTO();
		
		try {
			Connection con=ds.getConnection();
			String sql="select * from fuse_gg_maps where id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				map.setId(rs.getString(1));
				map.setName(rs.getString(2));
				map.setPar(rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return map;
	}
	
}
