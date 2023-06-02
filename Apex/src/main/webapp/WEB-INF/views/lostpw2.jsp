<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href="resources/lost2.css">
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
<input type="hidden" id="findpw" value="${findpw}">
    <form action="<%=request.getContextPath()%>/lostpw2" name="lostpwform" method="post">
      <div id="lost_form">
        <div id="first">
          <div id="logo" style="background-image: url(resources/img/logo.png)"></div>
          <div id="find">비밀번호 찾기</div>
        </div>

        <hr id="hr">

        <div id="div1">회원정보에 등록된 정보로 비밀번호가 발급되었습니다</div>

        <table>
          <tr>
            <td id="td_name">비밀번호</td>
            <td id="name_input"><input type="text" id="td_input1" name="name_input" value="${findpw}"></td>
          </tr>

          <tr>
            <td id="td_id"></td>
            <td id="id_input"><input type="text" id="td_input2" name="id_input"></td>
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