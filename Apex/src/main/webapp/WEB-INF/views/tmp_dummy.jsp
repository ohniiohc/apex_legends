<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login - FUSE.GG</title>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	<header>
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
	</header>
	<style type="text/css">
		section{
			width: 600px;
			margin: 60px auto;
			border-radius: 4px;
			background-color: #182F49;
			display: flex;
			flex-direction: column;
			align-items: center;
			box-sizing: border-box;
		}
		#top_bar{
			width: 100%;
			height: 36px;
			padding: 0 8px;
			line-height: 28px;
			border-radius: 4px 4px 0 0;
			border-bottom: 4px solid #DA292A;
			background-color: #072443;
			color: #F5F5F5;
			box-sizing: border-box;
		}
		#fuse_logo_wrap{
			display: flex;
			flex-direction: column;
			justify-content: center;
			height: 144px;
			margin: 48px 0;
		}
		.fuse_logo{
			color: #F5F5F5;
			font-size: 48px;
		}
		.colorDA292A{
			color: #DA292A;
		}
		.fuse_logo:nth-child(1),.fuse_logo:nth-child(5){
			z-index: 1;
			opacity: 0.10;
		}
		.fuse_logo:nth-child(2),.fuse_logo:nth-child(4){
			z-index: 2;
			opacity: 0.20;
		}
		.fuse_logo:nth-child(3){
			z-index: 3;
		}
		.fuse_logo:nth-child(1),.fuse_logo:nth-child(2){
			margin-bottom: -24px;
		}
		.fuse_logo:nth-child(4),.fuse_logo:nth-child(5){
			margin-top: -24px;
		}
		.fuse_logo:nth-child(1),.fuse_logo:nth-child(2),.fuse_logo:nth-child(4),.fuse_logo:nth-child(5){
			-webkit-text-stroke: 2px #F5F5F5;
			-webkit-text-fill-color: transparent;
		}
		#login_form{
			display: flex;
			flex-direction: column;
			align-items: center;
			gap: 12px;
		}
		.u_id_deco,.u_pw_deco{
			padding: 0 4px;
			background-color: #F5F5F5;
		}
		.u_id_deco,.u_pw_deco,.login_btn_deco{
			font-family: 'YdestreetB';
			font-size: 16px;
			outline: none;
			border: none;
			height: 36px;
			border-radius: 4px;
		}
		.login_btn_deco{
			width: 100%;
			color: #F5F5F5;
			background-color: #DA292A;
		}
		.link_href{
			font-size: 18px;
			font-family: 'YdestreetB';
			text-decoration: none;
		}
		#createacount{
			color: #DA292A;
			margin: 24px 0;
		}
		#findid{
			color: #F5F5F5;
		}
		#findpw{
			color: #F5F5F5;
			margin: 24px 0 60px 0;
		}
	</style>
	<section>
		<div id="top_bar">Login</div>
		<div id="fuse_logo_wrap">
			<div class="fuse_logo">FUSE.GG</div>
			<div class="fuse_logo">FUSE.GG</div>
			<div class="fuse_logo">FUSE<span class="colorDA292A">.</span>GG</div>
			<div class="fuse_logo">FUSE.GG</div>
			<div class="fuse_logo">FUSE.GG</div>
		</div>
		<form id="login_form" action="<c:url value='/login'/>" method="post">
			<input name="u_id" class="u_id_deco" type="text" placeholder="ID" required maxlength="8">
			<input name="u_pw" class="u_pw_deco" type="password" placeholder="Password" required maxlength="16">
			<button class="login_btn_deco">Login</button>
		</form>
		<a id="createacount" class="link_href" href="<c:url value='/'/>">계정 생성</a>
		<a id="findid" class="link_href" href="<c:url value='/'/>">아이디를 잊어버렸습니까?</a>
		<a id="findpw" class="link_href" href="<c:url value='/'/>">비밀번호를 잊어버렸습니까?</a>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>