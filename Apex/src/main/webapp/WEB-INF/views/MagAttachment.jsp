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

section{
padding-left: 20px;

}


.mag{
display: flex;

}
.tier {
	color: #F5F5F5;
	margin-bottom: 20px;
}

h3 {
	color: #F5F5F5;
	
}
hr{
margin-left:10px;
margin-right: 400px;
margin-bottom: 20px;

}

.tier ul li {
	color: #F5F5F5;
	list-style: none;
}

.image1 {
  width:600px;
  height: 400px;
}
.image2{
 position:absolute;
 right:400px;
  filter: invert(100%);
}
.yellowspan{
color:#c94912;

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
	<div class="tier">
	<h3>Tiers</h3>
	<hr>
	<ul>
	<li><span style="color:#a8a8a8">Level 1</span>: small capacity increase.</li>
	<li><span style="color:#51a8d6">Level 2</span>: medium capacity increase.</li>
	<li><span style="color:#b237c8">Level 3</span>: highest capacity increase.</li>
	<li><span style="color:#cead21">Level 4</span>: same as Level 3, but automatically reloads stowed weapons after 5 seconds.</li>	
	</ul>
	</div>
	
	
	<div>
	<h3>Extended Light Mag</h3>
	<hr>
	</div>
	<div class="mag">
	<div>
	<img src="/apex/resources/images/Maginfo/lightmag.png" class="image1"> 
	</div>
	<div>
	<img src="/apex/resources/images/Maginfo/ExtendedLightMag.png" class="image2">
	</div>
	
	</div>
	
	<div>
	<h3>Extended Heavy Mag</h3>
	<hr>
	</div>
	<div class="mag">
	<div>
	<img src="/apex/resources/images/Maginfo/heavymag.png" class="image1"> 
	</div>
	<div>
	<img src="/apex/resources/images/Maginfo/ExtendedHeavyMag.png" class="image2">
	</div>
	
	</div>
	
	<div>
	<h3>Extended Energy Mag</h3>
	<hr>
	</div>
	<p style="color:#F5F5F5">Note: the <span class="yellowspan">L-STAR EMG</span> doesn't have a mag per se, <span class="yellowspan">Extended Energy Mag.svg Extended Energy Mags</span> only increase the number <br>
	of shots that can be fired continuously before overheating.</p>
	<div class="mag" style="margin-top: 5px">
	<div>
	<img src="/apex/resources/images/Maginfo/Energymag.png" class="image1"> 
	</div>
	<div>
	<img src="/apex/resources/images/Maginfo/ExtendedEnergyMag.png" class="image2">
	</div>
	
	</div>
	
	<div>
	<h3>Extended Sniper Mag</h3>
	<hr>
	</div>
	<div class="mag">
	<div>
	<img src="/apex/resources/images/Maginfo/Snipermag.png" class="image1"> 
	</div>
	<div>
	<img src="/apex/resources/images/Maginfo/ExtendedSniperMag.png" class="image2">
	</div>
	
	</div>
	
	<div>
	<h3>Shotgun Bolt</h3>
	<hr>
	</div>
	<p style="color:#F5F5F5">Unlike all other magazines, the Shotgun Bolt does not affect magazine size.<br>
	 Instead, it boosts the fire rate of shotguns</p>
	<div class="mag" style="margin-top: 5px">
	<div>
	<img src="/apex/resources/images/Maginfo/Shotgun.png" class="image1"> 
	</div>
	<div>
	<img src="/apex/resources/images/Maginfo/ShotgunBolt.png" class="image2">
	</div>
	
	</div>
	<div>
	<p style="color:#F5F5F5">For the <span class="yellowspan">Peacekeeper</span>, it instead shortens the time to rechamber.</p>
	</div>
	<div>
	<img src="/apex/resources/images/Maginfo/peacekeeper.png" class="image1">
	</div>
	<div>
	<p style="color:#F5F5F5">Rather than passively reloading the whole magazine, the <span style="color:#ffc500">Level 4 Shotgun Bolt</span> automatically<br>
	 reloads one shot at a time while sliding.</p>
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