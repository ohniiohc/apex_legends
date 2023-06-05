<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width,initial-scale=1'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<style>
html {
	position: relative;
	width: 100%;
	height: 1300px;
	margin: 0 auto;
	background: #FFFFFF;
}

.mainbanner {
	box-sizing: border-box;
	position: absolute;
	width: 100%;
	height: 400px;
	left: 0px;
	top: -130px;
	background: url(resources/images/KakaoTalk_20230516_114632109.jpg);
	background-repeat: no-repeat;
	background-size: cover;
	filter: brightness(120%);
	/* 
border: 1px solid #000000; */
	filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
}

header {
	position: absolute;
	width: 1000px;
	height: 74px;
	left: 415px;
	top: 172px;
	line-height: 40px;
	font-size: 17px;
	background: #D9D9D9;
	display: flex;
	justify-content: flex-start;
}

header>p {
	margin-left: 20px;
	font-weight: bold;
}

a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: underline;
	color: blue;
}

.topicText {
	position: absolute;
	top: 20px;
	z-index: 1;
	display: flex;
	font-size: 12px;
	padding-top: 6px;
}

.topicText>p {
	margin-left: 20px;
}

.hotList {
	width: 340px;
	height: 240px;
	position: absolute;
	top: 60px;
	left: 21px;
	background-color: #9e9e9e;
}

section {
	position: absolute;
	width: 1000px;
	height: 716px;
	left: 415px;
	top: 267px;
	background: #D9D9D9;
}

.idbox {
	position: absolute;
	width: 280px;
	height: 160px;
	left: 1500px;
	top: 172px;
	background: #D9D9D9;
}

.loginbox {
	margin-top: 28px;
	margin-left: 20px;
}

.id {
	box-sizing: border-box;
	position: absolute;
	width: 150px;
	height: 30px;
	border: 1px solid black;
}

.pwd {
	box-sizing: border-box;
	position: absolute;
	width: 150px;
	height: 30px;
	margin-top: 50px;
	border: 1px solid black;
}

.login {
	box-sizing: border-box;
	position: absolute;
	width: 80px;
	height: 80px;
	margin-left: 180px;
	border: 1px solid #000000;
}

.login:hover {
	cursor: pointer;
}

.idbox>p {
	margin-top: 120px;
	margin-left: 30px;
}

.login>p {
	padding: 0 auto;
	text-align: center;
	line-height: 40px;
}

.sidebox {
	position: absolute;
	width: 322px;
	height: 420px;
	left: 1500px;
	top: 360px;

	/* background: #D9D9D9; */
}

#chatArea {
	height: 300px;
	overflow-y: scroll;
	border-bottom: 1px solid #ccc;
}

.send {
	border: 1px solid green;
	text-align: right;
	padding: 10px;
	font-size: 12px;
}

.recv {
	border: 1px solid gray;
	color: blue;
	font-size: 12px;
	text-align: left;
	padding: 10px;
}

#chat {
	width: 300px;
	height: 400px;
	border: 1px solid #ccc;
	padding: 10px;
}

.sidebox2 {
	position: absolute;
	width: 285px;
	height: 560px;
	left: 60px;
	top: 320px;
	background: #D9D9D9;
	background-image: url(resources/images/원신.jpg);
	background-size: cover;
}

.footerline {
	position: absolute;
	width: 1400px;
	height: 0px;
	left: 250px;
	top: 1074px;
	border: 1px solid #9e9e9e;
}

.footertext {
	position: absolute;
	top: 1100px;
	left: 300px;
}
</style>


</head>

<body>
	<div class="mainbanner">
		<!-- <img src="/img/KakaoTalk_20230516_114632109.jpg" alt=""> -->
	</div>

	<div class=""></div>


	<a href="https://genshin.hoyoverse.com/ko" class="sidebox2"
		target="_blank"></a>

	<div class="box1">
		<header>
			<p>
				<a href="<c:url value='/legends'/>">홈</a>
			</p>
			<p>
				<a href="<c:url value='/WeaponsHome'/>">무기</a>
			</p>
			<p>
				<a href="<c:url value='/maps'/>">맵 소개</a>
			</p>
			<p>
				<a href="<c:url value='/boardList'/>">자유 게시판</a>
			</p>
			<p>
				<a href="https://www.ea.com/ko-kr/games/apex-legends">공식 사이트</a>
			</p>
		</header>

		<section>

			<div class="post-form">
				<h2>글 작성</h2>
				<form id="create-post-form"
					action="<%=request.getContextPath()%>/board_writing2" name="postform"
					method="post">
					<div class="form-group">
						<label for="post-title">제목</label> <input type="text"
							id="post-title" name="post-title" placeholder="글의 제목을 입력하세요"
							required>
					</div>
					<div class="form-group">
						<label for="post-content">내용</label>
						<textarea id="post-content" name="post-content"
							placeholder="글의 내용을 입력하세요" required></textarea>
					</div>
					<input type="button" value="글 작성" id="writingbutton" name="writingbutton" onclick="writing()">
				</form>
			</div>
			
			<script>
			function writing() {
				let title = document.getElementById("post-title").value;
				let content = document.getElementById("post-content").value;
				
				if(title == ""){
					alert("제목을 적어주세요");
				}else if(content == ""){
					alert("내용을 적어주세요");
				}else{
					document.forms['postform'].submit();
				}
			}
			</script>

			<style>
.post-form {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
}

.post-form h2 {
	font-size: 18px;
	margin-bottom: 10px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 5px;
}

.form-group input, .form-group textarea {
	width: 100%;
	padding: 5px;
	font-size: 14px;
	border: 1px solid #ccc;
}

#writingbutton {
	padding: 8px 16px;
	font-size: 14px;
	font-weight: bold;
	background-color: #007bff;
	color: #fff;
	border: none;
	cursor: pointer;
}
</style>



		</section>
	</div>
	<!-- box1끝 -->

	<div class="box2">
		<%		 
	       String ID   = (String) session.getAttribute("ID");
		if (ID == null) {
		%>
		<form action="<%=request.getContextPath()%>/login2" name="loginform"
			method="post">
			<div class="idbox">
				<div class="loginbox">
					<input type="text" class="id" placeholder="ID" id="id_put" name="id_put"></input>
					<input type="text" class="pwd" placeholder="PW" id="pw_put" name="pw_put"></input>
				</div>

				<div class="loginbox2">
					<input type="button" class="login" value="로그인" onclick="login()">
				</div>

				<p>
					<a href="lostid">아이디 찾기</a> / <a href="lostpw">비밀번호 찾기</a> <br> <a href="signup">회원가입</a>
				</p>
			</div>
		</form>
		<script>
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
		</script>
		<%
		} else {
		%>
		<form action="<%=request.getContextPath()%>/채팅주소" name="logoutform"
			method="post">
			<div class="idbox">
				<div class="loginbox">
					<input type="text" class="id" placeholder="MY ID"
						readonly="readonly"></input> <input type="text" class="pwd"
						readonly="readonly" value="${sessionScope.ID}">
				</div>

				<div class="loginbox2">
					<input type="button" class="login" value="로그아웃" onclick="logout()">
				</div>

			</div>
		</form>
		<script>
			function logout() {			 
			    document.location.href = 'logout';
			}
		</script>
		<%
		}
		%>
	</div>


	<div class="sidebox">
		이름:<input type="text" id="nickname"> <input type="button"
			id="enterBtn" value="입장">


		<div id="chat">
			<div id="chatArea">
				<div id="chatMessageArea"></div>
			</div>
			<br /> <input type="text" id="message" placeholder="메시지를 입력하세요">
			<input type="button" id="sendBtn" value="전송">
		</div>

	</div>
	</div>
	<footer>
		<div class="footerline"></div>
		<div class="footertext">
			<address>AcornPex Project</address>
			<address>
				<br>We and our third-party partners use cookies and similar
				technologies as part of providing our services to you.<br> This
				includes using them for purposes such as operations, analytics,
				enhanced user experience, and advertising.<br> <br> You
				may Accept to enable all these technologies for all purposes, or
				Decline to disable all technologies except those necessary for
				operations.<br> You also may go to Manage Settings for more
				detail on the technologies we use and to manage your choices.<br>

			</address>
		</div>
	</footer>


</body>
<script>
	const swiper = new Swiper('.swiper', {
		// Optional parameters
		direction : 'horizontal',
		loop : true,

		// Navigation arrows
		navigation : {
			nextEl : '.swiper-button-next',
			prevEl : '.swiper-button-prev',
		},

		// And if we need scrollbar
		scrollbar : {
			el : '.swiper-scrollbar',
		},
	});
</script>
</html>