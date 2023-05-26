package com.acorn.apex.Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LegendsDAO {
	
	@Autowired
	DataSource ds;
	
	public Map<String, ArrayList<String>> selectAllLegends() throws SQLException {
		
		Map map=new HashMap<String,ArrayList<String>>(); 
		String[] arr = {"assault", "skirmisher", "recon", "support", "controller"};
		
	    Connection con;
		con = ds.getConnection();
		
		Arrays.stream(arr).forEach(item -> {
			
		    String sql ="select id from fuse_gg_legends where class=?"; 
			try {
				
				ArrayList<String> list = new ArrayList<>();
				PreparedStatement pst=con.prepareStatement(sql);
				pst.setString(1, item);
				ResultSet rs=pst.executeQuery();
				
				while(rs.next()) {
					
					String id=rs.getString(1);
					list.add(id);				
					
				}	
				map.put(item, list);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		});
		return map;
	}
	
	public LegendsDTO selectLegend(String id) {
		LegendsDTO legend=new LegendsDTO();
		Connection con;
		try {
			con = ds.getConnection();
			String sql ="select * from fuse_gg_legends where id=?";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				legend.setId(rs.getString(1));
				legend.setJob(rs.getString(2));
				legend.setName(rs.getString(3));
				legend.setL_class(rs.getString(4));
				legend.setTac(rs.getString(5));
				legend.setPas(rs.getString(6));
				legend.setUlt(rs.getString(7));
				legend.setTac_con(rs.getString(8));
				legend.setPas_con(rs.getString(9));
				legend.setUlt_con(rs.getString(10));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		return null;
	}
	
}
