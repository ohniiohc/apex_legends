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
	<script>
		let isTopClicked=false;
		const stepSize=600;
		
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
				       <img class="legend_profile_img" src="<%=rootPath%>/resources/images/legends/profile/${player.legendName.toLowerCase().replaceAll('\\s', '')}_square.png" />
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
							<img class="legend_profile_img" src="<%=rootPath%>/resources/images/legends/profile/${legendInfo.legendname.toLowerCase().replaceAll('\\s', '')}_square.png">
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