package com.acorn.webchat;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;


@Component
public class BoardDAO {
    private final String driver = "oracle.jdbc.driver.OracleDriver";
    private final String url = "jdbc:oracle:thin:@localhost:1521:xe";
    private final String username = "system";
    private final String password = "1234";
    private Connection con;

    public BoardDAO() {
        dbcon();
    }

    private void dbcon() {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Board getBoardById(Long id) {
        String query = "SELECT * FROM board WHERE id = ?";

        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setLong(1, id);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    Board board = new Board();
                    board.setTitle(rs.getString(1));
                    board.setContent(rs.getString(2));
                    board.setImage(rs.getString(3));

                    return board;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public List<Board> getBoardsByPage(int page, int pageSize) {
        int offset = (page - 1) * pageSize;
        String query = "SELECT * FROM board LIMIT ?, ?";

        List<Board> boards = new ArrayList<>();

        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setInt(1, offset);
            stmt.setInt(2, pageSize);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Board board = new Board();
                    board.setTitle(rs.getString("title"));
                    board.setContent(rs.getString("content"));
                    board.setImage(rs.getString("image"));

                    boards.add(board);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return boards;
    }

    public int getTotalPages(int pageSize) {
        String query = "SELECT COUNT(*) AS total FROM board";
        int total = 0;

        try (PreparedStatement stmt = con.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {
            if (rs.next()) {
                int totalCount = rs.getInt("total");
                total = (totalCount + pageSize - 1) / pageSize;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return total;
    }
    
    
    
    public static void main( String[]  args) {
    	
    	BoardDAO  dao = new BoardDAO();
    	Board board  =dao.getBoardById(1l);
    	System.out.println(  board);
    	
    }
}
