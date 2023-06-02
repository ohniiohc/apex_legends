<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href="resources/lost.css">
<script>
function gotologinpage() {
	window.location.href = 'login';
}

document.addEventListener('DOMContentLoaded', function() {
	document.getElementById('check').addEventListener('click',
			gotologinpage);
});
</script>
</head>
<body>
  <input type="hidden" id="findid" value="${findid}">

    <form action="<%=request.getContextPath()%>/lostid2" name="lostid" method="post">
      <div id="lost_form">
        <div id="first">
          <div id="logo" style="background-image: url(resources/img/logo.png)"></div>
          <div id="find">아이디 찾기</div>
        </div>

        <hr id="hr">

        <div id="div1">회원정보에 등록된 정보로 아이디를 찾을 수 있습니다</div>

        <table>
          <tr>
            <td id="td_name">아이디</td>
            <td id="name_input"><input type="text" id="td_input1" name="name_input" value="${findid}"></td>
          </tr>

          <tr>
            <td id="td_email"></td>
            <td id="email_input"><input type="text" id="td_input2" name="email_input"></td>
          </tr>

          <tr>
            <td colspan="2">            
                <input type="button" value="확인" id="check" onclick="gotologinpage()">
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>