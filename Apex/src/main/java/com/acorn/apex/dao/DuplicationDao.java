package com.acorn.apex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

@Component
public class DuplicationDao {
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String password = "1234";
	Connection con;
	
	private void dbcon() {
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);			
		} catch (Exception e) {
		} 
	}
	
	public boolean duplication_id(String id) {
		dbcon();
		
		
		String sql = " select id from user_table where id = ? ";
		
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, id);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			con.close();
			pst.close();
			rs.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}
