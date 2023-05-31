package com.acorn.webchat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardDAO {
    private final String url = "jdbc:mysql://localhost:8090/database_name";
    private final String username = "username";
    private final String password = "password";

    public Board getBoardById(Long id) {
        String query = "SELECT * FROM board WHERE board_nm = ?";

        try (Connection conn = DriverManager.getConnection(url, username, password);
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setLong(1,id);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    Board board = new Board();
                    board.setTitle(rs.getString("title"));
                    board.setContent(rs.getString("content"));
                    board.setImage(rs.getString("image"));

                    return board;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            
        }

        return null;
    }
}
