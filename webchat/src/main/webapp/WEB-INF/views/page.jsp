<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.acorn.webchat.BoardDAO" %>
<%@ page import="com.acorn.webchat.Board" %>
<%@ page import="java.util.List" %>
<%
    BoardDAO boardDAO = new BoardDAO();
    int pageSize = 5; // 페이지당 게시물 수

    // 페이지 번호 부분
    String pageParam = request.getParameter("page");
    int page1 = 1; // 기본 페이지 번호 설정
    if (pageParam != null && !pageParam.isEmpty()) {
        page = Integer.parseInt(pageParam);
    }

    List<Board> boards = boardDAO.getBoardsByPage(page1, pageSize);
    int totalPages = boardDAO.getTotalPages(pageSize); // 전체 페이지 수 계산
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* CSS 스타일 코드 */
    </style>
    <script>
        function goToPage(page) {
            // 페이지 이동 로직 구현
            location.href = "page.jsp?page=" + page;
        }
    </script>
</head>
<body>
    <div class="board-container">
        <h2>자유게시판</h2>
        <div class="post-list">
            <% 
                for (Board board : boards) {
            %>
            <div class="post">
                <h3><%= board.getTitle() %></h3>
                <p>작성자: <%= board.getWriter() %> | 작성일: <%= board.getWriteDate() %> | 추천 수: ?</p>
                <p><%= board.getContent() %></p>
            </div>
            <%
                }
            %>
        </div>
        <div class="pagination">
            <% 
                for (int i = 1; i <= totalPages; i++) {
            %>
            <button class="page-button" onclick="goToPage(<%= i %>)"><%= i %></button>
            <%
                }
            %>
        </div>
    </div>
</body>
</html>
