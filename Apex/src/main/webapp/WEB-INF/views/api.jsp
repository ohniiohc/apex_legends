<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% String rootPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<c:forEach var="player" items="${playerInfo}">
		<title>${player.name} Stats - FUSE.GG</title>
	</c:forEach>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/api.css'/>">
<style>
section {
	color: #F5F5F5;
}
.playerclass {
	width 100%;
	height: 360px;
	display: flex;
	justify-content: center;
	align-items: center;
	gap: 24px;
	color: #F5F5F5;
	background-position: 50% 10%;
	background-size: cover;
}
#player_avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
}
#player_nm_wrap{
	display: flex;
	flex-direction: column;
	font-size: 60px;
}
.player_nm:nth-child(1){
	z-index: 3;
}
.player_nm:nth-child(2){
	z-index: 2;
	opacity: 0.5;
}
.player_nm:nth-child(3){
	z-index: 1;
	opacity: 0.25;
}
.player_nm:nth-child(2),.player_nm:nth-child(3){
	margin-top: -36px;
	-webkit-text-stroke: 2px #F5F5F5;
	-webkit-text-fill-color: transparent;
}
#gradient{
	width: 100%;
	height: 96px;
	position: relative;
	top: -96px;
	background: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, #05162B 100%);
}
#player_legend_wrap{
	width: 1440px;
	margin: -48px auto 48px auto;
	display: flex;
	justify-content: center;
	gap: 24px;
}
.playerlevel,.legendname,.legends{
	box-sizing: border-box;
	border: 2px solid #8F94A5;
	background-color: #313443E0;
}
.playerlevel {
	width: 300px;
	height: 300px;
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
#legends_warp{
	display: flex;
	flex-direction: column;
}
.legendname,.legends{
	width: 900px;
	height: 244px;
	display: flex;
}
.legend_profile_img{
	width: 240px;
}
.legends_con{
	display: flex;
	flex-direction: column;
	margin: 12px 24px;
}
.lastpickinfo,.legendsinfo{
	margin-top: 24px;
}
.legendname p {
	font-size: 20px;
}
.legendname_img {
	width: 250px;
	height: 320px;
}
.lastlegend {
	width: 400px;
}
.lastlegend>p {
	font-size: 48px;
}
.lastpickinfo {
	width: 550px;
	height: 90px;
	font-size: 24px;
}
.legendsname{
	width: 480px;
	font-weight: bold;
	font-size: 48px;
	text-align: left;
}
.legends_img2{
	width: 250px;
	height: 320px;
}
.legendsinfo{
	display: flex;
	width: 500px;
	height: 90px;
	font-size: 24px;
	text-align: left;
}
/* -----글로벌 숨기기 입니다----- */
#global{
	display: none;
}
/* ------------------------- */
#remote{
	padding: 10px 20px;
	display: flex;
	flex-direction: column;
	gap: 10px;
	position: fixed;
	top: 520px;
	right: 200px;
}
.scroll_btn{
	box-sizing: border-box;
	padding: 10px 20px;
	font-size: 16px;
}
</style>
<script>
	let isTopClicked=false;
	const stepSize=480;
	
	function move(direction) {
		let currentPosition=window.scrollY||window.pageYOffset;
			
		if (direction==='up') {
			currentPosition-=stepSize;
		} else if (direction==='down') {
			if (isTopClicked) {
				currentPosition=0;
				isTopClicked=false;
			} else {
				currentPosition+=stepSize;
			}
		}
		window.scrollTo({
			top: currentPosition,
			behavior: 'smooth'
		});
	}
		
	function scrollToTop() {
		isTopClicked=true;
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
		<div id="header_mid">
			<form id="h_m_form" name="frm" action="<c:url value='/getPlayerInfo'/>" method="get">
				<input id="h_m_f_input" type="text" name="name" placeholder="Enter User Name">
				<button id="h_m_f_button"></button>
			</form>
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
		<div class="playerclass" style="background-image: url(<%=rootPath%>/resources/images/legends/back/${player.legendName.toLowerCase().replaceAll('\\s', '')}_32_crop_bg.png)">
			<img id="player_avatar" src="${player.avatar}">
			<div id="player_nm_wrap">
				<div class="player_nm">${player.name}</div>
				<div class="player_nm">${player.name}</div>
				<div class="player_nm">${player.name}</div>
			</div>
		</div>
		<div id="gradient"></div>
		<div id="player_legend_wrap">
			<div class="playerlevel">
				<p>Player Lever</p>
				${player.level}
				<div class="playerranking">
					<img src="${player.rankImg}">
					<div class="rankinginfo">
						RP : ${player.rankScore}
						<br>
						<br>
						Tier : ${player.rankName}
					</div>
				</div>
			</div>
			<div id="legends_warp">
				<div class="legendname">
				    <div class="legendname_img">
				       <img class="legend_profile_img" src="<c:url value='/resources/images/legends/profile/'/>${player.legendName.toLowerCase().replaceAll('\\s', '')}_square.png" />
				    </div>
				    <div class="legends_con">
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
				</div>
				<c:forEach var="legendInfo" items="${player.legendInfo}">
					<div id="${legendInfo.legendname.toLowerCase().replaceAll('\\s', '')}" class="legends">
						<div class="legends_img2">
							<img class="legend_profile_img" src="<c:url value='/resources/images/legends/profile/'/>${legendInfo.legendname.toLowerCase().replaceAll('\\s', '')}_square.png">
						</div>
						<div class="legends_con">
							<div class="legendsname">
								${legendInfo.legendname}
								<br>
							</div>         
							<div class="legendsinfo">
								<c:forEach var="data" items="${legendInfo.data}">
									${data.name}
									${data.value}
								</c:forEach> 
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:forEach>
	<div id="remote">
		<button class="scroll_btn" onclick="scrollToTop()">Top</button>
		<button class="scroll_btn" onclick="move('up')">Up</button>
		<button class="scroll_btn" onclick="move('down')">Down</button>
	</div>
	</section>
	<footer>
		<div id="footer_wrap">
			<p id="f_w_title">
				2023 © Acorn Academy
			</p>
			<p id="f_w_content">
				Apex Legends is a registered trademark of Electronic Arts. Trademarks are the property of their respective owners. 
				<br/>
				Game materials copyright Electronic Arts. Electronic Arts has not endorsed and is not responsible for this site or its content.
			</p>
		</div>
	</footer>
</body>
</html>