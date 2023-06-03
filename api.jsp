<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
	border: 1px solid;
	margin: 0 auto;
		display: flex;
		
		gap: 10px; /* Adjust the value as needed */
}

.playerinfo img {

		width: 100px;
		height: 100px; /* Set the width and height to the same value for a circular shape */
		border-radius: 50%; /
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
	border: 1px solid;
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
	border: 1px solid;
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

.legendname ul li {
	list-style: none;
	margin-top: 10px;
	margin-left: 50px;
	text-align: left;
}

.technical p {
	margin-bottom: 20px;
}



.legendname_img {
	border: 1px solid yellow;
	width: 250px;
	height: 320px;
	
}


.lastlegend {
	width: 400px;
	height: 100px;
	border: 1px solid blue;
	position: relative;
	left:300px;
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
	font-size: 35px;
	border: 1px solid blue;
	left:300px;
	top: -250px;
}

.legends {
	border: 1px solid;
	width: 900px;
	height: 325px;
	box-sizing: border-box;
	position: relative;
	
}
.legendsname{
	
	width: 400px;
	height: 100px;
	border: 1px solid blue;
	position: relative;
	left:300px;
	top: 30px;
	font-weight: bold;
	font-size: 55px;
	text-align: left;
}
.legends_img2{
	border: 1px solid yellow;
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
	font-size: 32px;
	border: 1px solid blue;
	left:300px;
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









@font-face {
	font-family: 'Hanson';
	src: url('fonts/Hanson-Bold.otf') format('opentype');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'YdestreetB';
	src: url('fonts/YdestreetB.otf') format('opentype');
	font-weight: normal;
	font-style: normal;
}

body {
	min-width: 1440px;
	position: relative;
	font-family: 'Hanson';
	background: #05162B;
	
}
/* ------------------------------ */
/* ----------header_start---------- */
/* ------------------------------ */
header {
	width: 100%;
}

#header_top, #header_bottom {
	padding: 0 36px;
	background: linear-gradient(90deg, #0B1422 0%, #042D56 100%);
}

#header_top {
	height: 60px;
	display: flex;
	align-items: center;
}

#h_t_logo {
	font-size: 24px;
	color: #F5F5F5;
	text-decoration: none;
	border-bottom: 4px solid #DA292A;
}

#header_bottom {
	height: 40px;
	display: flex;
}

.h_b_link {
	height: 100%;
	padding: 0 12px;
	color: #F5F5F5;
	line-height: 40px;
	text-decoration: none;
	box-sizing: border-box;
}

.h_b_link:hover {
	color: #DA292A;
	/* border-bottom: 4px solid #DA292A; */
}
/* ------------------------------ */
/* ----------header_end---------- */
/* ------------------------------ */

/* ------------------------------ */
/* ----------footer_start---------- */
/* ------------------------------ */
footer {
	height: 180px;
	padding-top: 36px;
	font-family: 'YdestreetB';
	color: #445C76;
	background-color: #0B1422;
}

#footer_left {
	padding: 36px;
	border-top: 1px solid #445C76;
}

#f_l_title {
	font-size: 14px;
	margin-bottom: 12px;
}

#f_l_content {
	font-size: 10px;
}
/* ------------------------------ */
/* ----------footer_end---------- */
/* ------------------------------ */
</style>
</head>
<body>
	<header>
		<div id="header_top">
			<a id="h_t_logo" href="">FUSE.GG</a>
		</div>
		<div id="header_bottom">
			<a class="h_b_link" href=""> Legends </a> <a class="h_b_link" href="">
				Weapons </a> <a class="h_b_link" href=""> Maps </a> <a class="h_b_link"
				href=""> Forums </a>
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