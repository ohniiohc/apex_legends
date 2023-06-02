<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.acorn.apex.tmp.BoardDTO" %>
<%@ page import="com.acorn.apex.tmp.CommentDTO" %>
<% String rootPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function recommend(b_id) {
		$.ajax({
			url:'<%=rootPath%>/tmp_recommend',
			type:'GET',
			data: {
				b_id: b_id
			},
			success: function(data) {
				console.log(data);
				if(data=="duplicates"){
					alert("추천은 개시글당 한번만 가능합니다.");
				}else{
					$('#r_cnt').html(data);					
				}
			},
			error: function(err) {
				alert(err);
				console.log(err);
			}
		});
	}
	function comment(b_id) {
		let c_con=$("#c_con").val();
		$.ajax({
			url:'<%=rootPath%>/tmp_comment',
			type:'GET',
			data: {
				c_con: c_con,
				b_id: b_id
			},
			success: function(data) {
				console.log(data);
				$('#comment_table').empty();
				data.forEach(function(item){
					let row = "<tr><td>" + item.u_id + "</td><td>" + item.c_con + "</td><td>";
	                if (item.u_id === '<%=session.getAttribute("session_u_id")%>') {
	                    row+="<button onclick='delcomment(\""+item.b_id+"\", \""+item.c_id+"\")'>삭제</button>";
	                }
	                row+="</td></tr>";
	                $('#comment_table').append(row);
				});
			},
			error: function(err) {
				alert(err);
				console.log(err);
			}
		});
	}
	
	function delcomment(b_id,c_id) {
		$.ajax({
			url:'<%=rootPath%>/tmp_delcomment',
			type:'GET',
			data: {
				b_id: b_id,
				c_id: c_id
			},
			success: function(data) {
				console.log(data);
				$('#comment_table').empty();
				data.forEach(function(item){
					let row = "<tr><td>" + item.u_id + "</td><td>" + item.c_con + "</td><td>";
	                if (item.u_id === '<%=session.getAttribute("session_u_id")%>') {
	                    row+="<button onclick='delcomment(\""+item.b_id+"\", \""+item.c_id+"\")'>삭제</button>";
	                }
	                row+="</td></tr>";
	                $('#comment_table').append(row);
				});
			},
			error: function(err) {
				alert(err);
				console.log(err);
			}
		});
	}
</script>
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
	<% BoardDTO board=(BoardDTO)request.getAttribute("board"); %>
	<table>
		<tr>
			<td>			
				<%=board.getB_title()%>
			</td>
			<td>			
				<%=board.getU_id()%>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<%=board.getB_con()%>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button onclick='recommend("<%=board.getB_id()%>")'>
					<p>👍</p>					
					<p id="r_cnt">
						<%=board.getR_cnt()%>
					</p>					
				</button>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="text" id="c_con">
				<button onclick='comment("<%=board.getB_id()%>")'>입력</button>
			</td>
		</tr>
	</table>
	<table id="comment_table">
		<c:forEach items="${colist}" var="item">
		    <tr>
		        <td>${item.u_id}</td>
		        <td>${item.c_con}</td>
		        <td>
		            <c:if test="${item.u_id eq session_u_id}">
		                <button onclick='delcomment("${item.b_id}","${item.c_id}")'>삭제</button>
		            </c:if>
		        </td>
		    </tr>
		</c:forEach>
	</table>
</body>
</html>