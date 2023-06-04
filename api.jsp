<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/index.css'/>">
<meta charset="UTF-8">
<title>Weapon Information</title>
<style>
* {
	padding: 0;
	margin: 0;
}

p {
	color: #F5F5F5;
}

section {
	text-Align: Center;
	font-family: 'Hanson';
	color: #F5F5F5;
}

.playerclass {
	color: #F5F5F5;
	border: 1px solid white;
}

.playerinfo {
	align-items: center;
	text-align: center;
	width: 500px;
	height: 150px;
	/*border: 1px solid;*/
	margin: 0 auto;
	display: flex;
	gap: 10px; /* Adjust the value as needed */
}

.playerinfo img {
	
	width: 100px;
	height: 100px; /* Set the width and height to the same value for a circular shape */
	border-radius: 50%;
	margin: 0 auto;
	margin-left:20px;
	vertical-align: middle;
	
	
	
}

.playerinfo > span {
	font-size: 60px;
	margin: 0 auto;
	line-height: 1;
		

}

.playerlevel {
	width: 300px;
	height: 300px;
	border: 2px solid #8F94A5;
	background-color: #313443E0;
	margin-left: 100px;
	margin-top: 40px;
	text-align: center;
	padding: 10px;
	font-size: 20px;
}

.playerlevel img {
	margin: 0 auto;
	margin-top: 20px;
}

.rankinginfo {
	margin: 0 auto;
	margin-top: 20px;
	font-size: 20px;
}
.legendname {
	border: 2px solid #8F94A5;
	background-color: #313443E0;
	width: 900px;
	height: 325px;
	margin-left: 470px;
	margin-top: -325px;
	position:absolute;	
	box-sizing: border-box;
}

.legendname p {
	margin-top: 15px;
	margin-bottom: 20px;
	font-size: 20px;
}


.technical p {
	margin-bottom: 20px;
}



.legendname_img {
	/*border: 1px solid yellow;*/
	width: 250px;
	height: 320px;
	
}


.lastlegend {
	width: 400px;
	height: 100px;
	/*border: 1px solid blue;*/
	position: relative;
	left:320px;
	top: -280px;
	
}


.lastlegend>p {
	float: left;
	font-size: 55px;
	margin-left: 20px;
	font-weight: bold;
}

.lastpickinfo {
	display: flex;
	width: 550px;
	height: 90px;
	position: relative;
	font-size: 32px;
	/*border: 1px solid blue;*/
	left:320px;
	top: -270px;
}

.legends {
	border: 2px solid #8F94A5;
	background-color: #313443E0;
	width: 900px;
	height: 325px;
	box-sizing: border-box;
	position: relative;
	
}
.legendsname{
	
	width: 480px;
	height: 100px;
	/*border: 1px solid blue;*/
	position: relative;
	left:320px;
	top: 30px;
	font-weight: bold;
	font-size: 55px;
	text-align: left;
}
.legends_img2{
	/*border: 1px solid yellow;*/
	width: 250px;
	height: 320px;;
	position: relative;
	bottom: 100px;
	
}
.legendsinfo{
	display: flex;
	width: 500px;
	height: 90px;
	position: relative;
	font-size: 30px;
	/*border: 1px solid blue;*/
	left:320px;
	top: -250px;
	text-align: left;
}

.technical p {
	margin-bottom: 20px;
}

a {
	list-style: none;
	text-decoration: none;
}

.Attachment.Slots p {
	color: #0A0A0A;
	margin-bottom: 20px;
	filter: none;
}



/* -----글로벌 숨기기 입니다----- */
#global{
	display: none;
}
/* ------------------------- */

#remote {
  display: flex;
  flex-direction: column;
  gap: 10px;
  position: fixed;
  top: 500px;
  left: 1400px;
  transform: translateY(-50%);
}

.button {
  padding: 10px 20px;
  font-size: 16px;
}
.updown{
display: flex;
width: 200px;
height: 200px;
}


</style>
<script>
let currentPosition = 0;
let isTopClicked = false;
const stepSize = 150;

function move(direction) {
  if (direction === 'up') {
    currentPosition -= stepSize;
  } else if (direction === 'down') {
    if (isTopClicked) {
      currentPosition = 0;
      isTopClicked = false;
    } else {
      currentPosition += stepSize;
    }
  }

  window.scrollTo({
    top: currentPosition,
    behavior: 'smooth'
  });
}

function scrollToTop() {
  isTopClicked = true;
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
}
	

</script>
</head>
<body>
	<header>
		<div id="header_top">
			<a id="h_t_logo" href="<c:url value='/index'/>">FUSE.GG</a>
		</div>
		<div id="header_bottom">
			<a class="h_b_link" href="<c:url value='/legends'/>">
				Legends
			</a>
			<a class="h_b_link" href="<c:url value='/WeaponsHome'/>">
				Weapons
			</a>
			<a class="h_b_link" href="<c:url value='/maps'/>">
				Maps
			</a>
			<a class="h_b_link" href="">
				Community
			</a>
		</div>
	</header>

	<section>
	
		<c:forEach var="player" items="${playerInfo}">
			<div class="playerclass">
				<div class="playerinfo">
					<img src="${player.avatar}"> <span>${player.name}</span>
				</div>
			</div>
			<div class="playerlevel">
				<p>Player Lever</p>
				${player.level}
				<div class="playerranking">
					<img src="${player.rankImg}">
					<div class="rankinginfo">
					
						RP : ${player.rankScore} <br> <br> Tier : ${player.rankName}
					</div>
				</div>
			</div>

			<div class="legendname">
				<div class="legendname_img">
					<img src="<c:url value='/resources/images/legends/profile/'/>${player.legendName.toLowerCase().replaceAll('\\s', '')}_square.png" />
				</div>
				<div class="lastlegend">
					<p>${player.legendName}</p>
				</div>
				<br>


				<div class="lastpickinfo">
					<c:forEach  var="legendData" items="${player.selecteddata}">
						<div>
							${legendData.name}
							${legendData.value}
							
						</div>
					</c:forEach>
				</div>
			</div>


			
		
				<c:forEach var="legendInfo" items="${player.legendInfo}">
				
			<div id="${legendInfo.legendname.toLowerCase().replaceAll('\\s', '')}" class="legends" style="margin-left: 470px;">
				<div class="legendsname">
						${legendInfo.legendname} <br>
				</div>			
				<div class="legends_img2">
					<img src="<c:url value='/resources/images/legends/profile/'/>${legendInfo.legendname.toLowerCase().replaceAll('\\s', '')}_square.png">
				</div>	
				
				<div class="legendsinfo">
					<c:forEach var="data" items="${legendInfo.data}">
				 						
						${data.name}
						${data.value}
						
						 </c:forEach> 
				</div>
			</div>
						 
							</c:forEach>
	</c:forEach>
		
	<div class="updown">
		<div id="remote">
			<button class="button" onclick="scrollToTop()"> Top  </button>
  			<button class="button" onclick="move('up')">Up</button>
  			<button class="button" onclick="move('down')">Down</button>
		</div>
	</div>
<div id="result"></div>
	</section>


	<footer>
		<div id="footer_left">
			<p id="f_l_title">2023 © Acorn Academy</p>
			<p id="f_l_content">
				Apex Legends is a registered trademark of Electronic Arts.
				Trademarks are the property of their respective owners. <br /> Game
				materials copyright Electronic Arts. Electronic Arts has not
				endorsed and is not responsible for this site or its content.
			</p>
		</div>
	</footer>
</body>

</html>