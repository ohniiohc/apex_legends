import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class CommentService {
    private final String DB_URL = "jdbc:mysql://localhost:3306/mydatabase";
    private final String DB_USERNAME = "username";
    private final String DB_PASSWORD = "password";

    public Comment createComment(Comment comment) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD)) {
            String query = "INSERT INTO comments (content, post_id, parent_id) VALUES (?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, comment.getContent());
            statement.setLong(2, comment.getPostId());
            statement.setLong(3, comment.getParentId());
            statement.executeUpdate();

            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                long commentId = generatedKeys.getLong(1);
                comment.setId(commentId);
                return comment;
            } else {
                throw new SQLException("댓글 생성에 실패했습니다.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("댓글 생성 중 오류가 발생했습니다.");
        }
    }

    public List<Comment> getCommentsByPostId(Long postId) {
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD)) {
            String query = "SELECT * FROM comments WHERE post_id = ?";
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setLong(1, postId);
            ResultSet resultSet = statement.executeQuery();

            List<Comment> comments = new ArrayList<>();
            while (resultSet.next()) {
                Comment comment = new Comment();
                comment.setId(resultSet.getLong("id"));
                comment.setContent(resultSet.getString("content"));
                comment.setPostId(resultSet.getLong("post_id"));
                comment.setParentId(resultSet.getLong("parent_id"));
                comments.add(comment);
            }
            return comments;
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("댓글 조회 중 오류가 발생했습니다.");
        }
    }

    // 필요한 추가 메서드 정의
}
