<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.acorn.apex.model.MapsDTO" %>
<% String rootPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Maps - FUSE.GG</title>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/maps.css'/>">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		function change_map(id) {
			$.ajax({
				type:"GET",
				url:"<%=rootPath%>/getmap",
				data:{id,id},
				success:function(data){
					console.log(data);
					$("#s_w_title").html(data.name);
					$("#section_content").html(data.par);
					$("#section_img").css({"background":"url(<%=rootPath%>/resources/images/maps/"+data.id+".png)"});
				},
				error:function(err){
					console.log(err);
				}
			});
		}
	</script>
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
	</header>
	<section>
		<div id="section_wrap">
			<h2 id="s_w_title">OLYMPUS</h2>
			<div id="s_w_maps">
				<% ArrayList<String> list=(ArrayList<String>)request.getAttribute("list"); %>
				<% for(String map:list){ %>
				<div class="map" id="<%=map%>" style="background-image: url(<%=rootPath%>/resources/images/maps/<%=map%>.png)" onclick="change_map(this.id)"></div>
				<% } %>
			</div>
		</div>
		<p id="section_content">
			Once a city built on dreams, Olympus was a utopia floating in clouds above Psamathe. Here, the brightest minds in the Outlands could gather and exchange ideas, leading to breakthroughs in the sciences and arts. However, an accident in an experimental research facility led to the creation of the Phase Rift (a massive bubble of Phase energy), and the Outlands’ best and brightest quickly abandoned the city. With the support of the Mercenary Syndicate, Hammond Robotics stepped in to transform Olympus into a new stage for the Apex Games.
			<br>
			Since then, a ship from the Icarus Fleet brought a deadly virus along with powerful Medusa Vines to Olympus. While the virus was cured, the vines remained and kept the ship docked to the city. Additionally, a disastrous attempt to transport Olympus to a new location using phase technology sent the city into a tailspin, its structures being littered across the terrain as it stabilized. The changes shook up the Games, creating new challenges for participating Legends.
		</p>
		<div id="section_img"></div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>