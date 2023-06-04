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
	padding-left: 20px;
}
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
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
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
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>

</html>