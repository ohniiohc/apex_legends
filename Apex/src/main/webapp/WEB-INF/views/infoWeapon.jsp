<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Weapon Information - FUSE.GG</title>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
<style>
* {
	padding: 0;
	margin: 0;
}
section {
	color:#F5F5F5;
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
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
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

	
<c:if test="${not empty weapon.magazine}">
    <p class="magazine">Magazine:
        <c:if test="${not empty weapon.magazine.split('/')[0]}"><span >${weapon.magazine.split('/')[0]}</span></c:if>
        <c:if test="${not empty weapon.magazine.split('/')[1]}">/<span style="color: #a8a8a8;">${weapon.magazine.split('/')[1]}</span></c:if>
        <c:if test="${not empty weapon.magazine.split('/')[2]}">/<span style="color: #51a8d6;">${weapon.magazine.split('/')[2]}</span></c:if>
        <c:if test="${not empty weapon.magazine.split('/')[3]}">/<span style="color:#b237c8;">${weapon.magazine.split('/')[3]}</span></c:if>
    </p>
</c:if>
<c:if test="${not empty weapon.tac}">
    <p class="tac">Tac reload time:
        <c:if test="${not empty weapon.tac.split('/')[0]}"><span>${weapon.tac.split('/')[0]}</span></c:if>
        <c:if test="${not empty weapon.tac.split('/')[1]}">/<span style="color: #a8a8a8;">${weapon.tac.split('/')[1]}</span></c:if>
        <c:if test="${not empty weapon.tac.split('/')[2]}">/<span style="color: #51a8d6;">${weapon.tac.split('/')[2]}</span></c:if>
        <c:if test="${not empty weapon.tac.split('/')[3]}">/<span style="color:#b237c8;">${weapon.tac.split('/')[3]}</span></c:if>
    </p>
</c:if>

<c:if test="${not empty weapon.full}">
    <p class="full">Full reload time:
        <c:if test="${not empty weapon.full.split('/')[0]}"><span>${weapon.full.split('/')[0]}</span></c:if>
        <c:if test="${not empty weapon.full.split('/')[1]}">/<span style="color: #a8a8a8;">${weapon.full.split('/')[1]}</span></c:if>
        <c:if test="${not empty weapon.full.split('/')[2]}">/<span style="color: #51a8d6;">${weapon.full.split('/')[2]}</span></c:if>
        <c:if test="${not empty weapon.full.split('/')[3]}">/<span style="color:#b237c8;">${weapon.full.split('/')[3]}</span></c:if>
    </p>
</c:if>
				</div>
		</c:forEach>
	</section>
	
	
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
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