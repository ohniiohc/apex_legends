package com.acorn.apex.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

import com.acorn.apex.model.MemberDto;

@Component
public class MemberDao {
	
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
	
	public void MemberReg(MemberDto member) {
		dbcon();
		
		String sql = " insert into user_table values(user_sequence.nextval,?,?,?,?,?) ";
		
		try {
			PreparedStatement pst = con.prepareStatement(sql, new String[]{"user_number"});
			pst.setString(1, member.getName());
			pst.setString(2, member.getId());
			pst.setString(3, member.getPw());
			pst.setString(4, member.getEmail());
			pst.setString(5, member.getSex());
			
			int rowsAffected = pst.executeUpdate();
            if (rowsAffected > 0) {
                ResultSet generatedKeys = pst.getGeneratedKeys();
                if (generatedKeys.next()) {
                    String generatedId = generatedKeys.getString(1); // 시퀀스 번호 가져오기
                    member.setUser_number(generatedId); // MemberDto에 시퀀스 번호 설정
                }
                generatedKeys.close();
            }
			
			pst.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
