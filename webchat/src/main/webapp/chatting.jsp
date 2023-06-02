<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>채팅</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	
	<script type="text/javascript">
    var wsocket;

    function connect() {
        wsocket = new WebSocket("ws://localhost:8090/webchat/chat-ws");

        wsocket.onopen = onOpen;
        wsocket.onmessage = onMessage;
        wsocket.onclose = onClose;
    }

    function disconnect() {
        wsocket.close();
    }

    function onOpen(evt) {
        alert("채팅창에 입장하였습니다.");
    }

    function onMessage(evt) {
        var data = evt.data;
        if (data.substring(0, 4) == "msg:") {
            appendRecvMessage(data.substring(4));
        }
    }

    function onClose(evt) {
        alert("채팅방을 나왔습니다.");
    }

    function send() {  
        var nickname = $("#nickname").val();        
        var msg = $("#message").val();       
        
        wsocket.send("msg:"+nickname+":" + msg);        
        $("#message").val("");
        
        appendSendMessage(msg);
    }

    function appendRecvMessage(msg) {          
        $("#chatMessageArea").append("<div class='recv'>" + msg + "</div>");        
        scrollTop();
    }

    function scrollTop() {
        var chatAreaHeight = $("#chatArea").height();         
        var maxScroll = $("#chatMessageArea").height() - chatAreaHeight;  
        $("#chatArea").scrollTop(maxScroll);
    }

    function appendSendMessage(msg) {     
        $("#chatMessageArea").append("<div class='send'>" + msg + "</div>"); 
        scrollTop();
    }

    $(document).ready(function() {    
        $('#message').keypress(function(event) {
            var keycode = event.keyCode;		            
		  
            if (keycode == '13') {		    	  
                send(); 
            }  		 
            event.stopPropagation();  // 상위로 이벤트 전파 막음
        });

        $('#sendBtn').click(function() { send(); });
        $('#enterBtn').click(function() { connect(); });
        $('#exitBtn').click(function() { disconnect(); });
   
        const swiper = new Swiper('.swiper', {
            direction: 'horizontal',
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            scrollbar: {
                el: '.swiper-scrollbar',
            },
        });
    });
</script>	
<style>
html{
		position: relative;
width: 100%;
height: 1300px;
margin: 0 auto;

background: #FFFFFF;
	}
	
	.mainbanner{
		box-sizing: border-box;

position: absolute;
width: 100%;
height: 400px;
left: 0px;
top: -130px;

background: url(/img/KakaoTalk_20230516_114632109.jpg);
background-repeat: no-repeat;
background-size:cover;
filter:brightness(120%);

/* 
border: 1px solid #000000; */
filter: drop-shadow(0px 4px 4px rgba(0, 0, 0, 0.25));
	}

	header{
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
	header > p {
		margin-left: 20px;
		font-weight: bold;
	}
	a{
		text-decoration: none;
		color:black;
	}
	a:hover{
		text-decoration: underline;
	
		color:blue;
	}
	.topicText{
		position: absolute;
		top:20px;
		z-index: 1;
		display:flex;
		font-size: 12px;
		padding-top:6px;
	}
	.topicText > p {
		margin-left:20px;
	}
	.hotList{
		width: 340px;
		height: 240px;
		position: absolute;
		top:60px;
		left: 21px;


		background-color: #9e9e9e;
	}
	section{
		position: absolute;
width: 1000px;
height: 716px;
left: 415px;
top: 267px;

background: #D9D9D9;
	}
	.swiper {
			width: 700px;
			height: 300px;
			margin-top: 30px;
		}
		.swiper-button-prev,.swiper-button-next{
			color: #DA292A;
		}
		.swiper-slide img{
			width: 700px;
			height: 300px;
		}
		.hottopic{
			position: absolute;
width: 386px;
height: 312px;
left: 30px;
top: 380px;


background: #DFB3B3;
		}
		.hottopic > p{
			position: absolute;
width: 158px;
height: 23px;
left: 20px;
z-index: 1;

font-family: 'Inter';
font-style: normal;
font-weight: bold;
font-size: 16px;
line-height: 18px;

color: #000000;
		}
		.hottopic2{
			position: absolute;
width: 386px;
height: 312px;
left: 490px;
top: 380px;

background: #DFB3B3;
		}
		.idbox{
			position: absolute;
width: 280px;
height: 160px;
left: 1500px;
top: 172px;

background: #D9D9D9;
		}
		.loginbox{
			margin-top: 28px;
			margin-left: 20px;
		}

.id{
box-sizing: border-box;

position: absolute;
width: 150px;
height: 30px;



border: 1px solid black;
		}
		.pwd{
			box-sizing: border-box;

position: absolute;
width: 150px;
height: 30px;
margin-top: 50px;

border: 1px solid black;
		}
		.login{
			box-sizing: border-box;

position: absolute;
width: 80px;
height: 80px;
margin-left: 180px;

border: 1px solid #000000;
		}

		.login:hover{
			cursor: pointer;
		}

		.idbox > p {
			margin-top: 120px;
			margin-left: 30px;
		}
		
		.login > p {
			padding: 0 auto;
			text-align: center;
			line-height: 40px;
	}
	.sidebox{
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

.send{
    border:1px solid green; 
    text-align:right;
    padding:10px;
    font-size:12px;
    
 }
 
 .recv{
    border:1px solid gray;
    color:blue;
     font-size:12px;
    text-align:left;
    padding:10px;
 }
 #chat {
  width: 300px;
  height: 400px;
  border: 1px solid #ccc;
  padding: 10px;
}
	.sidebox2{
		position: absolute;
width: 240px;
height: 560px;
left: 90px;
top:320px;
background: #D9D9D9;
background-image: url(/resources/img/원신.jpg);
background-size: cover;

	}
	.footerline{
		position: absolute;
width: 1400px;
height: 0px;
left: 250px;
top: 1074px;

border: 1px solid #9e9e9e;
	}
	.footertext {
		position: absolute;
		top:1100px;
		left: 300px;
	}
	/* <!--이슈 버튼 긴급 수정 --> */
	.issueButton {
  background-color: transparent;
  border: none;
  padding: 0;
  font-size: inherit;
  font-family: inherit;
  color: blue;
  text-decoration: underline;
  cursor: pointer;
  
}
	.issueButton:focus{ 	
    outline:none !important;
box-shadow:none !important;
    }
</style>
</head>
<body>
<div class="mainbanner">
		<!-- <img src="/img/KakaoTalk_20230516_114632109.jpg" alt=""> -->
	</div>

	<div class=""></div>


<a  href="https://genshin.hoyoverse.com/ko" class="sidebox2" target="_blank"></a>

<div class="box1">
	<header>
		<p><a href="">홈</a></p>
		<p><a href="">전략 게시판</a></p>
		<p><a href="">게임 소개</a></p>
		<p><a href="">밸런스 토론장</a></p>
		<p><a href="">자유 게시판</a></p>
		<p><a href="https://www.ea.com/ko-kr/games/apex-legends">공식 사이트</a></p>
	</header>
		
	<section>
		<!-- Slider main container -->
	<div class="swiper">
		<!-- Additional required wrapper -->
		<div class="swiper-wrapper">
			<!-- Slides -->
			<div class="swiper-slide"><img src="<c:url value='/resources/img/CGimg1.png'/>" alt=""></div>
			<div class="swiper-slide"><img src="<c:url value='/resources/img/CGimg2.png'/>" alt=""></div>
			<div class="swiper-slide"><img src="<c:url value='/resources/img/CGimg3.png'/>" alt=""></div>
		</div>
	  
		<!-- If we need navigation buttons -->
		<div class="swiper-button-prev"></div>
		<div class="swiper-button-next"></div>
	  
		<!-- If we need scrollbar -->
		<div class="swiper-scrollbar"></div>
	</div>

		<div class="hottopic">
			<p>Today Hot Topic</p>

			<div class="topicText">
 			 <button type="button" class="issueButton">자유게시판 이슈</button>
  			<button type="button" class="issueButton">토론장 이슈</button>
			</div>


			<div class="hotList">

			</div>
		</div>
		

		<div class="hottopic2">
			
		</div>
	</section>
</div>
<!-- box1끝 -->

<div class="box2">
	<div class="idbox">
		<div class="loginbox">
			<input type="text" class="id" placeholder=" ID"></input>
			<input type="password" class="pwd" placeholder=" PW" ></input>
		</div>

		<div class="loginbox2">
			<button type="submit" class="login">
				<p>login</p>
			</button>
		</div>
		
		<p><a href="">아이디 찾기</a>  / <a href="">비밀번호 찾기</a></p>
	</div>


	<div class="sidebox">
		이름:<input type="text" id="nickname">
		<input type="button" id="enterBtn" value="입장">
		
		
		<div id="chat">
		<div id="chatArea"><div id="chatMessageArea"></div></div>
		<br/>
		<input type="text" id="message" placeholder="메시지를 입력하세요">
		<input type="button" id="sendBtn" value="전송">
		</div>
		  
	</div>
</div>
	<footer>
		<div class="footerline"></div>
		<div class="footertext">
			<address>AcornPex Project  </address>
			 <address><br>We and our third-party partners use
				 cookies and similar technologies as part of providing our services to you.<br>
				  This includes using them for purposes such as operations, analytics,
				   enhanced user experience, and advertising.<br><br>

				You may Accept to enable all these technologies 
				for all purposes, or Decline to disable all technologies 
				except those necessary for operations.<br> You also may go to Manage
				 Settings for more detail on the technologies we use and to manage 
				 your choices.<br>
				
			 </address>
		</div>
	</footer>


</body>

</html>