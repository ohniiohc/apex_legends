package com.acorn.Apex.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.acorn.Apex.Dto.Board_WritingDto;

@Component
public class Board_WritingDao {

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

	public boolean writing(Board_WritingDto writing) {
		dbcon();

		String sql = " insert into boardwriting (title, content, id) values(?,?,?) ";

		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, writing.getTitle());
			pst.setString(2, writing.getContent());
			pst.setString(3, writing.getId());

			int result = pst.executeUpdate();
			pst.close();
			con.close();
			return result > 0;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
}
