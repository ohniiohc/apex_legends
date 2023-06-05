package com.acorn.Apex.Webchat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardListDAO {

	@Autowired
	DataSource ds;
	

    public List<boardlistDTO> getBoardList() {
        List<boardlistDTO> boardList = new ArrayList<>();
       

        try {
        	Connection con = ds.getConnection();
           
            String sql = " select * from boardlist ";
            PreparedStatement pst = con.prepareStatement(sql);

            
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
            	String id = rs.getString(1);
                String title = rs.getString(2);
            	String writer = rs.getString(3);
            	int views =rs.getInt(4);
            	int likes = rs.getInt(5);
            	
            	boardlistDTO boardlistdto = new boardlistDTO(id, title, writer, views, likes);
            	boardList.add(boardlistdto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 

        return boardList;
    }
}



