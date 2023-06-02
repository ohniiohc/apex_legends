<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href="resources/login.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	window.addEventListener("load", function() {
		let idfalse = document.getElementById("idfalse");
		let idfalseMsg = idfalse.value; // value  , innerHTML 
		if (idfalseMsg.length > 0) {
			alert(idfalseMsg);
		}

	});
	
	window.addEventListener("load", function() {
		let loginsuccess = document.getElementById("loginsuccess");
		let loginsuccessMsg = loginsuccess.value; // value  , innerHTML 
		if (loginsuccessMsg.length > 0) {
			alert(loginsuccessMsg);
		}

	});
	
	window.addEventListener("load", function() {
		let loginfalse = document.getElementById("loginfalse");
		let loginfalseMsg = loginfalse.value; // value  , innerHTML 
		if (loginfalseMsg.length > 0) {
			alert(loginfalseMsg);
		}

	});


	function login() {
		let id = document.getElementById("id_put").value;
		let pw = document.getElementById("pw_put").value;

		if (id == "") {
			alert("아이디를 입력해주세요");
		} else if (pw == "") {
			alert("비밀번호를 입력해주세요");
		} else {
			document.forms['loginform'].submit();
		}
	}

	function goToLostIdPage() {
		window.location.href = 'lostid';
	}

	document.addEventListener('DOMContentLoaded', function() {
		document.getElementById('lost_id').addEventListener('click',
				goToLostIdPage);
	});

	function goToLostPwPage() {
		window.location.href = 'lostpw';
	}

	document.addEventListener('DOMContentLoaded', function() {
		document.getElementById('lost_pw').addEventListener('click',
				goToLostPwPage);
	});
	
	function maketheid() {
		window.location.href = 'signup';
	}

	document.addEventListener('DOMContentLoaded', function() {
		document.getElementById('make_id').addEventListener('click',
				maketheid);
	});
	
	
</script>
</head>
<body>
	<input type="hidden" id="idfalse" value="${idfalse}">
	<input type="hidden" id="loginsuccess" value="${loginsuccess}">
	<input type="hidden" id="loginfalse" value="${loginfalse}">

	<form action="<%=request.getContextPath()%>/login2" name="loginform"
		method="post">
		<div id="login_form">
			<div id="logo" style="background-image: url(resources/img/logo.png);"></div>
			<input type="text" id="id_put" name="id_put"
				placeholder="전화번호 또는 이메일을 입력하세요"> <input type="text"
				id="pw_put" name="pw_put" placeholder="암호입력"> <input
				type="button" id="login_button" value="로그인" onclick="login()">
			<div id="lost_id" onclick="goToLostIdPage()">아이디를 잊어버렸습니까?</div>
			<div id="lost_pw" onclick="goToLostPwPage()">비밀번호를 잊어버렸습니까?</div>
			<input id="make_id" type="button" value="계정 생성" onclick="maketheid()">
		</div>
	</form>
</body>
<%@ include file="/footer.jsp"%>
</html>