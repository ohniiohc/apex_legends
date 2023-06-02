<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.acorn.apex.tmp.BoardDTO" %>
<%
String rootPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>제목</td>
			<td>글쓴이</td>
		</tr>
		<%
		ArrayList<BoardDTO> list=(ArrayList<BoardDTO>)request.getAttribute("list");
		%>
		<%
		for(BoardDTO board:list){
		%>
		<tr>
			<td><a href="<%=rootPath%>/tmp_board?b_id=<%=board.getB_id() %>"><%=board.getB_title()%></a></td>
			<td><%=board.getU_id()%></td>
		</tr>
		<% } %>
	</table>
</body>
</html>