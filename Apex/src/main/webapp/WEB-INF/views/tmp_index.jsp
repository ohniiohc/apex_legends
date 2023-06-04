<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.acorn.apex.tmp.BoardDTO" %>
<% String rootPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${session_u_id == null}">
		<form action="<c:url value='/tmp_login'/>" method="post">
			<input type="text" name="log_u_id">
			<button>로그인</button>
		</form>
	</c:if>
	<c:if test="${session_u_id != null}">
		<p>
			<span>${session_u_id}</span>
			<span>님 반갑습니다.</span>
		</p>
		<form action="<c:url value='/tmp_logout'/>" method="get">
			<button>로그아웃</button>
		</form>
	</c:if>
	<table>
		<tr>
			<td>제목</td>
			<td>글쓴이</td>
		</tr>
		<% ArrayList<BoardDTO> list=(ArrayList<BoardDTO>)request.getAttribute("list"); %>
		<% for(BoardDTO board:list){ %>
		<tr>
			<td><a href="<%=rootPath%>/tmp_board?b_id=<%=board.getB_id() %>"><%=board.getB_title()%></a></td>
			<td><%=board.getU_id()%></td>
		</tr>
		<% } %>
	</table>
</body>
</html>