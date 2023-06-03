<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">

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

\
.Stock {
	display: flex;
}

.Stock {
	color: #F5F5F5;
	margin-bottom: 20px;
}

Stock>p {
	color: #F5F5F5;
}

h3, h4 {
	color: #F5F5F5;
}

hr {
	margin-left: 10px;
	margin-right: 400px;
	margin-bottom: 20px;
}

.image1 {
	width: 600px;
	height: 400px;
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
		
			<h3>Stock</h3>
			<hr>
			<p style="color: #F5F5F5; padding-bottom: 20px;">
				<b>Stocks</b> are a group of <span>attachments</span> that improve
				the reload speed, handling, and aim drift of most larger weapons.<br>
				There are two kinds of stock; the <span><img
					src="/apex/resources/images/Stockinfo/Sniper_Stock.png">Sniper
					Stock</span> for sniper rifles and marksman weapons, and the<br> <span>
					<img src="/apex/resources/images/Stockinfo/Standard_Stock.png">Standard
					Stock
				</span> for all else.
			</p>
		


		<div>
			<h3>Sniper Stock</h3>
			<hr>
			<p style="color: #F5F5F5; padding-bottom: 20px;">
				The Sniper Stock can be equipped on all <span>sniper rifles</span>
				and <span>marksman<br> weapons
				</span> (except the <span>Bocek</span>).
			</p>

			<h4 style="padding-bottom: 20px;">Overall time reductions</h4>
		</div>
		<div class="Stock">
			<div>
				<img src="/apex/resources/images/Stockinfo/SniperStock.png"
					class="image1">
			</div>
			<div>
				<img src="/apex/resources/images/Stockinfo/Sniper_Stock.png"
					class="image2">


			</div>

		</div>
		
		<div>
			<h3>Standard Stock</h3>
			<hr>
			<p style="color: #F5F5F5; padding-bottom: 20px;">
				The Standard Stock can be equipped on all <span>assault rifles</span>, 	<span>submachine guns</span>, <span>light machine<br>
				 guns</span>, and all <span>shotguns</span> minus the <span>Mozambique Shotgun</span>.
			</p>

			<h4 style="padding-bottom: 20px;">Overall time reductions</h4>
		</div>
		<div class="Stock">
			<div>
				<img src="/apex/resources/images/Stockinfo/StandardStock.png"
					class="image1">
			</div>
			<div>
				<img src="/apex/resources/images/Stockinfo/Standard_Stock.png"
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