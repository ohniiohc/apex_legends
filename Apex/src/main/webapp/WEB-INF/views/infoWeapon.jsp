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
p{
color:#F5F5F5;
}

section {
	text-Align: Center;
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


.damage {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  margin-top: 10px;
  margin-bottom: 20px;
  color: #F5F5F5;
}

.damage > div {
  width: 200px;
  text-align: center;
  margin-bottom: 10px;
}
.technical p{
margin-bottom: 20px;
}
a{
list-style: none;
text-decoration: none;
}
.Attachment.Slots p {
    color: #0A0A0A;
    margin-bottom: 20px;
    filter: none;
}

</style>
	
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
		<!-- 총기 정보 출력 -->
		<c:forEach items="${infoWeapon}" var="weapon">
			<div class="weapon">

				<p class="weaponname" style="margin-top: 20px;">${weapon.name}</p>
				<img src="/apex${weapon.img}" alt="${weapon.name}" style="filter: invert(100%); margin-top: 20px;">

				<div class="profile">
				<p> - Profile -</p>
					<p class="weaponType">Type: ${weapon.type}</p>
					<p class="WeaponAmmo">
						Ammo: <img src="/apex${weapon.ammoimg}"> ${weapon.ammoname }
					</p>
					<p class="WeaponFire">
						Fire modes: <img src="/apex${weapon.modeimg }" style="filter: invert(100%);">${weapon.modetype }</p>
					<c:if test="${not empty weapon.modeimg2}">
						<p class="WeaponFire">
							<img src="/apex${weapon.modeimg2}"  style="filter: invert(100%); margin-left: 90px;">
							${weapon.modetype2}
						</p>
					</c:if>
				</div>
				<div class="Attachment Slots" style="filter: invert(100%);">
					<p >- Attachment Slots -</p>
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
					<div>Body</div> 
					<div>${weapon.body}</div>
					</div>
					
					<div>
						<div>Head</div> 
						<div> ${weapon.head}</div>
					</div>
					
					<div>
					<div>Legs </div>
					<div>${weapon.legs}</div>
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
    if (filename.includes("SightAttachment") || filename.includes()) {
        filename = "BarrelAttachment";
      }
    
    if(filename.includes("StockAttachment")){
    	filename = "StockAttachmentStandard";
    }
    
    if (filename.includes("SkullpiercerAttachment") || 
    	    filename.includes("HammerpointRoundsAttachment") ||
    	    filename.includes("DoubleTapTriggerAttachment") ||
    	    filename.includes("ShatterCapsAttachment") ||
    	    filename.includes("BoostedLoaderAttachment")||
    	    filename.includes("TurbochargerAttachment")
    ) {
    	  filename = "Hop-Up";
    	}
    // 동적으로 생성한 href 값으로 페이지 이동
    window.location.href = filename;
  }
</script>
</html>