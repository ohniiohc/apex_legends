<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>FUSE.GG</title>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/index.css'/>">
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
	</header>
	<section>
		<video id="section_background" muted autoplay loop src="<c:url value='resources/videos/index-bg-video.mp4'/>"></video>
		<div id="section_wrap">
			<div id="section_wrap_logo">
				<img id="s_w_l_icon" src="<c:url value='resources/images/icon/apex_logo.svg'/>" alt="">
				<img id="s_w_l_logo" src="<c:url value='resources/images/icon/apex_txtlogo.svg'/>" alt="">
			</div>
			<div id="section_wrap_search">
				<form id="s_w_s_form" name="frm" action="<c:url value='/getPlayerInfo'/>" method="get">
					<input id="s_w_s_f_input" type="text" name="name" placeholder="Enter User Name">
					<button id="s_w_s_f_button"></button>
				</form>
			</div>
		</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>