package com.acorn.Apex.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

@Component
public class LostPwDao {
	
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
	
	public String LostPw(String id, String email) {
		
		dbcon();
		
		String pw = null;
		
		String sql = " select pw from user_table where id =? and email =? ";
		
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, email);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				pw = rs.getString(1);
			}
			
			con.close();
			pst.close();
			rs.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return pw;
		
		
	}
}
