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

section {
	padding-left: 20px;
}

@font-face {
	font-family: 'Hanson';
	src: url('fonts/Hanson-Bold.otf') format('opentype');
	font-weight: normal;
	font-style: normal;
}


.Barrel {
	display: flex;
}

.Barrel {
	color: #F5F5F5;
	margin-bottom: 20px;
}

Barrel>p {
	color: #F5F5F5;
}

h1,h2,h3,h4 {
	color: #F5F5F5;
}

hr {
	margin-left: 10px;
	margin-right: 400px;
	margin-bottom: 20px;
}

.image1 {
	width: 800px;
	height: 300px;
}

.image2 {
	position: absolute;
	right: 400px;
	filter: invert(100%);
}

.yellowspan {
	color: #c94912;
}

span {
	color: #c94912;
}

span>img {
	width: 20px;
	height: 20px;
	filter: invert(100%);
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
		
			<h1>Barrel Mod</h1>
			<hr>
			<p style="color: #F5F5F5; padding-bottom: 20px;">
				<b>Barrel Mods</b> are a category of <span>attachments</span> that improve the accuracy of many <span>weapons</span>. There are two kinds of<br>
				 barrel mod: the <img src="/apex/resources/images/Barrelinfo/Barrel_Stabilizer.png"
					style="filter: invert(100%); width: 20px; height: 20px;"><span>Barrel Stabilizer</span>, which reduces recoil for heavier, long-range weapons, and the <img src="/apex/resources/images/Barrelinfo/Laser_Sight.png"
					style="filter: invert(100%); width: 20px; height: 20px;"><span>Laser Sight</span>,<br>
				  which reduces spread while hipfiring for smaller, close-range weapons.
			for all else.
			</p>
		


		<div>
			<h1>Barrel Stabilizer</h1>
			<hr>
			<p style="color: #F5F5F5; padding-bottom: 20px;">
				Barrel Stabilizers can be equipped on the <span>Hemlok Burst AR</span>,<span>R-301 Carbine</span>, <span>Devotion LMG</span>, <span>L-<br>
				STAR EMG</span>, <span>G7 Scout</span>, and <span>Longbow DMR</span>.
			</p>

			<h4 style="padding-bottom: 20px;">Overall time reductions</h4>
		</div>
		<div class="Barrel">
			<div>
				<img src="/apex/resources/images/Barrelinfo/Barrel.png"
					class="image1">
			</div>
			<div>
				<img src="/apex/resources/images/Barrelinfo/Barrel_Stabilizer.png"
					class="image2">


			</div>

		</div>
		
		<div>
			<h1>Laser Sight</h1>
			<hr>
			<p style="color: #F5F5F5; padding-bottom: 20px;">
				Laser Sights can be equipped on the <span>Alternator SMG</span>, <span>Prowler Burst PDW</span>, <span>R-99 SMG</span>, <span>Volt SMG</span>,<br>
				 and <span>P2020</span>.
			</p>

			<h4 style="padding-bottom: 20px;">Overall time reductions</h4>
		</div>
		<div class="Barrel">
			<div>
				<img src="/apex/resources/images/Barrelinfo/Laser.png"
					class="image1">
			</div>
			<div>
				<img src="/apex/resources/images/Barrelinfo/Laser_Sight.png"
					class="image2">


			</div>

		</div>

		
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