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

section{
padding-left: 20px;

}

@font-face {
    font-family: 'Hanson';
    src: url('resources/fonts/Hanson-Bold.otf') format('opentype');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'YdestreetB';
    src: url('resources/fonts/YdestreetB.otf') format('opentype');
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
			<a class="h_b_link" href="<c:url value='/boardindex'/>">
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
	<img src="/open/resources/images/Maginfo/lightmag.png" class="image1"> 
	</div>
	<div>
	<img src="/open/resources/images/Maginfo/ExtendedLightMag.png" class="image2">
	</div>
	
	</div>
	
	<div>
	<h3>Extended Heavy Mag</h3>
	<hr>
	</div>
	<div class="mag">
	<div>
	<img src="/open/resources/images/Maginfo/heavymag.png" class="image1"> 
	</div>
	<div>
	<img src="/open/resources/images/Maginfo/ExtendedHeavyMag.png" class="image2">
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
	<img src="/open/resources/images/Maginfo/Energymag.png" class="image1"> 
	</div>
	<div>
	<img src="/open/resources/images/Maginfo/ExtendedEnergyMag.png" class="image2">
	</div>
	
	</div>
	
	<div>
	<h3>Extended Sniper Mag</h3>
	<hr>
	</div>
	<div class="mag">
	<div>
	<img src="/open/resources/images/Maginfo/Snipermag.png" class="image1"> 
	</div>
	<div>
	<img src="/open/resources/images/Maginfo/ExtendedSniperMag.png" class="image2">
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
	<img src="/open/resources/images/Maginfo/Shotgun.png" class="image1"> 
	</div>
	<div>
	<img src="/open/resources/images/Maginfo/ShotgunBolt.png" class="image2">
	</div>
	
	</div>
	<div>
	<p style="color:#F5F5F5">For the <span class="yellowspan">Peacekeeper</span>, it instead shortens the time to rechamber.</p>
	</div>
	<div>
	<img src="/open/resources/images/Maginfo/peacekeeper.png" class="image1">
	</div>
	<div>
	<p style="color:#F5F5F5">Rather than passively reloading the whole magazine, the <span style="color:#ffc500">Level 4 Shotgun Bolt</span> automatically<br>
	 reloads one shot at a time while sliding.</p>
	</div>
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

</html>