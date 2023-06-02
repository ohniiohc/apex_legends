<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.acorn.apex.tmp.BoardDTO" %>
<%@ page import="com.acorn.apex.tmp.CommentDTO" %>
<%
String rootPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function recommend(b_id) {
		let u_id=$("#r_u_id").val();
		$.ajax({
			url:'<%=rootPath%>/tmp_recommend',
			type:'GET',
			data: {
				b_id: b_id,
				u_id: u_id
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
		let u_id=$("#c_u_id").val();
		let c_con=$("#c_con").val();
		$.ajax({
			url:'<%=rootPath%>/tmp_comment',
			type:'GET',
			data: {
				c_con: c_con,
				u_id: u_id,
				b_id: b_id
			},
			success: function(data) {
				console.log(data);
				$('#comment_table').empty();
				data.forEach(function(item){
					$('#comment_table').append(
						"<tr><td>"+item.u_id+"</td><td>"+item.c_con+"</td></tr>"
					);					
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
	<%
	BoardDTO board=(BoardDTO)request.getAttribute("board");
	%>
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
				<input type="text" id="r_u_id">
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
				<input type="text" id="c_u_id">
				<input type="text" id="c_con">
				<button onclick='comment("<%=board.getB_id()%>")'>입력</button>
			</td>
		</tr>
	</table>
	<table id="comment_table">
		<%
		ArrayList<CommentDTO> colist=(ArrayList<CommentDTO>)request.getAttribute("colist");
		%>
		<%
		for(CommentDTO item:colist){
		%>
		<tr>
			<td><%=item.getU_id()%></td>
			<td><%=item.getC_con()%></td>
		</tr>
		<% } %>
	</table>
</body>
</html>