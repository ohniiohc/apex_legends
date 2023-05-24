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
p{
color:#F5F5F5;
}

section {
	text-Align: Center
}

weaponname {
	margin-bottom: 20px;
}

.weaponType {
	margin-bottom: 20px;
}

.WeaponAmmo {
	margin-bottom: 20px;
}

.WeaponAmmo img {
	width: 30px;
	height: 30px;
	vertical-align: middle; /* 이미지를 수직 가운데 정렬 */
	margin-bottom: 5px;
}

.WeaponFire img {
	margin-right: 5px;
}

.WeaponFire {
	margin-bottom: 20px;
}
.Attachment Slots p{

margin-bottom: 20px;
}
.damage {
	display: flex;
	justify-content: space-around;
	align-items: center;
	margin-top: 10px; /* 간격 조정 */
	margin-bottom: 20px;
	margin-left: 100px;
	color:#F5F5F5;
}
.technical p{
margin-bottom: 20px;
}
a{
list-style: none;
text-decoration: none;
}
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
body{
    min-width: 1440px;
    position: relative;
    font-family: 'Hanson';
    background: #05162B;
}
/* ------------------------------ */
/* ----------header_start---------- */
/* ------------------------------ */
header{
    width: 100%;
}
#header_top,#header_bottom{
    padding: 0 36px;
    background: linear-gradient(90deg, #0B1422 0%, #042D56 100%);
}
#header_top{
    height: 60px;
    display: flex;
    align-items: center;
}
#h_t_logo{
    font-size: 24px;
    color: #F5F5F5;
    text-decoration: none;
    border-bottom: 4px solid #DA292A;
}
#header_bottom{
    height: 40px;
    display: flex;
}
.h_b_link{
    height: 100%;
    padding: 0 12px;
    color: #F5F5F5;
    line-height: 40px;
    text-decoration: none;
    box-sizing: border-box;
}
.h_b_link:hover{
    color: #DA292A;
    /* border-bottom: 4px solid #DA292A; */
}
/* ------------------------------ */
/* ----------header_end---------- */
/* ------------------------------ */


/* ------------------------------ */
/* ----------footer_start---------- */
/* ------------------------------ */
footer{
    height: 180px;
    padding-top: 36px;
    font-family: 'YdestreetB';
    color: #445C76;
    background-color: #0B1422;
}
#footer_left{
    padding: 36px;
    border-top: 1px solid #445C76;
}
#f_l_title{
    font-size: 14px;
    margin-bottom: 12px;
}
#f_l_content{
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
			<a class="h_b_link" href="">
				Legends
			</a>
			<a class="h_b_link" href="">
				Weapons
			</a>
			<a class="h_b_link" href="">
				Maps
			</a>
			<a class="h_b_link" href="">
				Forums
			</a>
		</div>
	</header>
	<section>
		<!-- 총기 정보 출력 -->
		<c:forEach items="${infoWeapon}" var="weapon">
			<div class="weapon">

				<p class="weaponname">${weapon.name}</p>
				<img src="/apex${weapon.img}" alt="${weapon.name}" style="filter: invert(100%);">

				<div class="profile">
				<p> - Profile -</p>
					<p class="weaponType">Type: ${weapon.type}</p>
					<p class="WeaponAmmo">
						Ammo: <img src="/apex${weapon.ammoimg}"> ${weapon.ammoname }
					</p>
					<p class="WeaponFire">
						Fire modes: <img src="/apex${weapon.modeimg }">${weapon.modetype }</p>
					<c:if test="${not empty weapon.modeimg2}">
						<p class="WeaponFire">
							<img src="/apex${weapon.modeimg2}" alt="">
							${weapon.modetype2}
						</p>
					</c:if>
				</div>
				<div class="Attachment Slots">
					<p>- Attachment Slots -</p>
						<c:if test="${not empty weapon.attachment1}">
						 <a href="#" onclick="redirectToPage('/apex/${weapon.attachment1}')">
						 
							<img src="/apex${weapon.attachment1}">
							</a>
						</c:if>
						<c:if test="${not empty weapon.attachment2}">
						 <a href="#" onclick="redirectToPage('/apex/${weapon.attachment2}')">
							<img src="/apex${weapon.attachment2}">
							</a>
						</c:if>
						<c:if test="${not empty weapon.attachment3}">
						<a href="#" onclick="redirectToPage('/apex/${weapon.attachment3}')">
							<img src="/apex${weapon.attachment3}">
							</a>
						</c:if>
						<c:if test="${not empty weapon.attachment4}">
						<a href="#" onclick="redirectToPage('/apex/${weapon.attachment4}')">
							<img src="/apex${weapon.attachment4}">
							</a>
						</c:if>
						<c:if test="${not empty weapon.attachment5}">
						<a href="#" onclick="redirectToPage('/apex/${weapon.attachment5}')">
							<img src="/apex${weapon.attachment5}">
							</a>
						</c:if>
					
				</div>
				<p style="margin-top: 10px">- Damage -</p>
				<div class="damage">
				
					<div>
						Body <br> ${weapon.body}
					</div>
					<div>
						Head <br> ${weapon.head}
					</div>
					<div>
						Legs <br> ${weapon.legs}
					</div>
				</div>

				<div class="technical">
				<p style="margin-bottom: 20px">- Technical -</p>
					<p class="rpm">RPM: ${weapon.rpm }</p>

					<p class="dps">DPS: ${weapon.dps }</p>

					<p class="magazine">Magazine: ${weapon.magazine }</p>
					<c:if test="${not empty weapon.tac}">
						<p class="tac">Tac reload time : ${weapon.tac }</p>
					</c:if>

					<c:if test="${not empty weapon.full}">
						<p class="full">Full reload time: ${weapon.full }</p>
					</c:if>
				</div>
		</c:forEach>
	</section>
	
	
	<footer>
		<div id="footer_left">
			<p id="f_l_title">
				2023 © Acorn Academy
			</p>
			<p id="f_l_content">
				Apex Legends is a registered trademark of Electronic Arts. Trademarks are the property of their respective owners. 
				<br/>
				Game materials copyright Electronic Arts. Electronic Arts has not endorsed and is not responsible for this site or its content.
			</p>
		</div>
	</footer>
</body>
<script>
  function redirectToPage(src) {
    // 파일 이름 추출
    var filename = src.split('/').pop().split('.').shift();
    if (filename.includes("MagAttachment")) {
        filename = "MagAttachment";
      }
    if (filename.includes("SkullpiercerAttachment") || 
    	    filename.includes("HammerpointRoundsAttachment") ||
    	    filename.includes("DoubleTapTriggerAttachment") ||
    	    filename.includes("ShatterCapsAttachment") ||
    	    filename.includes("BoostedLoaderAttachment")) {
    	  filename = "Hop-Up";
    	}
    // 동적으로 생성한 href 값으로 페이지 이동
    window.location.href = filename;
  }
</script>
</html>