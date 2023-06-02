<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/header.jsp"%>
<link rel='stylesheet' href="resources/lost.css">
<script>
function findid() {
	if(name_input == ""){
		alert("유저번호를 입력하세요");
	}else if(email_input == ""){
		alert("이메일을 입력하세요");
	}else{
		document.lostidform.submit();
	}
}
</script>
</head>
<body>
    <form action="<%=request.getContextPath()%>/lostid2" name="lostidform" method="post">
      <div id="lost_form">
        <div id="first">
          <div id="logo" style="background-image: url(resources/img/logo.png)"></div>
          <div id="find">아이디 찾기</div>
        </div>

        <hr id="hr">

        <div id="div1">회원정보에 등록된 정보로 아이디를 찾을 수 있습니다</div>

        <table>
          <tr>
            <td id="td_name">이름</td>
            <td id="name_input"><input type="text" id="td_input1" name="name_input"></td>
          </tr>

          <tr>
            <td id="td_email">이메일</td>
            <td id="email_input"><input type="text" id="td_input2" name="email_input"></td>
          </tr>

          <tr>
            <td colspan="2">            
                <input type="button" value="확인" id="check" onclick="findid()">
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
  <%@ include file="/footer.jsp"%>
</html>