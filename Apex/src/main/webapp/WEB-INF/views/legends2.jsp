<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.acorn.apex.Model.LegendsDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/legends2.css'/>">
	<script>
		function change_legend(id){
			alert(id);	
		}
		function change_legend123124(id){
			alert("dkfkfkf");
			
			$.ajax(  {
				type:"GET",
				url:"/apex/legends3",
				data:{id:id},
				success: function( data ){
					alert( data);	
					let result  = toHtml( data);
					
					$("#wrap").html(result); 	  // div 태그 사이의 내용 가져오거나 변경할 때		
					
					console.log( data);
				} ,
				error: function(err){
					console.log(err);
				}			
			});  		
		}
    </script>
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
			<a class="h_b_link" href="">
				Weapons
			</a>
			<a class="h_b_link" href="<c:url value='/maps'/>">
				Maps
			</a>
			<a class="h_b_link" href="">
				Forums
			</a>
		</div>
	</header>
	<section>
		<!-- Write user code here -->
		<% Map<String, ArrayList<String>> map=(Map<String, ArrayList<String>>)request.getAttribute("map"); %>
		<% String rootPath = request.getContextPath(); %>
		<div id="section_legend-img-back">
			<div id="section_legend-img-front"></div>
		</div>
		<div id="section_gradient">
			<div id="s_g_name">
				<h3 id="s_g_n_job">Bombastic Explosives Expert</h3>
				<h2 id="s_g_n_name">FUSE</h2>
			</div>
			<div id="s_g_legends">
				<div class="s_g_l_class" id="">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> assault = map.get("assault"); %>
					    <% for (String legend : assault) { %>
							<div class="legends-img" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">ASSAULT</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class" id="">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> skirmisher = map.get("skirmisher"); %>
					    <% for (String legend : skirmisher) { %>
							<div class="legends-img" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">SKIRMISHER</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class" id="">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> recon = map.get("recon"); %>
					    <% for (String legend : recon) { %>
							<div class="legends-img" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">RECON</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class" id="">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> support = map.get("support"); %>
					    <% for (String legend : support) { %>
							<div class="legends-img" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">SUPPORT</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class" id="">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> controller = map.get("controller"); %>
					    <% for (String legend : controller) { %>
							<div class="legends-img" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">CONTROLLER</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
			</div>
		</div>
		<div>asfasdfasdffdsfsdafsadf</div>
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