<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.acorn.apex.Model.LegendsDTO" %>
<% String rootPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/legends.css'/>">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
		function change_legend(id){
			$.ajax({
				type:"GET",
				url:"<%=rootPath%>/getlegend",
				data:{id:id},
				success:function(data){
					console.log(data);
					$("#s_g_n_job").html(data.job);
					$("#s_g_n_name").html(data.name);
					$("#section_legend-img-back").css({"background":"url(<%=rootPath%>/resources/images/legends/back/"+data.id+"_32_crop_bg.png)"});
					$("#section_legend-img-front").css({"background":"url(<%=rootPath%>/resources/images/legends/front/"+data.id+"_32_crop.png)"});
				} ,
				error:function(err){
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
			<a class="h_b_link" href="<c:url value='/weapons'/>">
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
						<% Map<String, ArrayList<String>> map=(Map<String, ArrayList<String>>)request.getAttribute("map"); %>
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
		
		
		
		
		<style>
			#skill_wrap{
				width: 1440px;
				margin-top: 100px;
				background: center url(<%=rootPath%>/resources/images/legends/class/class_assault.png);
				background-size: cover;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			#skill_ctrl{
				display: flex;
				flex-direction: column;
			}
			#sk_btn_wrap{
				display: flex;
				justify-content: space-around;
			}
			.skill_btn{
				width: 72px;
				height: 72px;
				border: none;
				background: none;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			#pas{
				border: 2px solid #27CD66;
			}
			.skill_btn img{
				height: 60px;
			}
			#sk_line{
				margin: 24px 0;
				height: 2px;
				background-color: #445C76;
				display: flex;
				justify-content: space-around;
				align-items: center;
			}
			.outer_circle{
				width: 16px;
				height: 16px;
				border-radius: 16px;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			#pas_crcl_brdr{
				border: 2px solid #27CD66;
			}
			.inner_circle{
				width: 10px;
				height: 10px;
				border-radius: 10px;
				background-color: #445C76;
			}
			#pas_crcl{
				background-color: #27CD66;
			}
			.content {
				display: none; /* 버튼을 클릭하기 전에는 숨깁니다. */
			}
			ul li *{
				color: #F5F5F5;
			}
			ul li h6{
				margin-bottom: 6px;
				font-size: 12px;
			}
			ul li h5{
				margin-bottom: 8px;
				color: #DA292A;
				font-size: 20px;
			}
			ul li p{
				font-size: 14px;
			}
			video{
				width: 640px;
				height: 360px;
			}
			#tac_txt,#ult_txt,#tac_vid,#ult_vid{
				display: none;
			}
		</style>
		<script>
			function change_vid(id) {
				$('.skill_btn, .inner_circle, .outer_circle, .skill_txt, .sk_vid').each(function() {
			        $(this).css('border', 'none');
			    });
			    $('.inner_circle').css('backgroundColor', '#445C76');
			    $('.outer_circle').css('border', 'none');
			    $('.skill_txt, .sk_vid').hide();
			    
			    let skill_btn_selected = $('#' + id);
			    skill_btn_selected.css('border', '2px solid #27CD66');
			    let outer_circle_selected = $('#' + id + '_crcl_brdr');
			    outer_circle_selected.css('border', '2px solid #27CD66');
			    let inner_circle_selected = $('#' + id + '_crcl');
			    inner_circle_selected.css('backgroundColor', '#27CD66');
			    let skill_txt_selected = $('#' + id + '_txt');
			    skill_txt_selected.show();
			    let sk_vid_selected = $('#' + id + '_vid');
			    sk_vid_selected.show();
			}
		</script>


		<div id="skill_wrap">
			<div id="skill_ctrl">
				<div id="sk_btn_wrap">
					<button id="pas" class="skill_btn" onclick="change_vid(this.id)">
						<img id="img1" src="<%=rootPath%>/resources/images/apex-grid-tile-legends-abilities-passive-fuse.png.adapt.crop16x9.652w.png" alt="">
					</button>
					<button id="tac" class="skill_btn" onclick="change_vid(this.id)">
						<img id="img2" src="<%=rootPath%>/resources/images/apex-grid-tile-legends-abilities-tactical-fuse.png.adapt.crop16x9.652w.png" alt="">
					</button>
					<button id="ult" class="skill_btn" onclick="change_vid(this.id)">
						<img id="img3" src="<%=rootPath%>/resources/images/apex-grid-tile-legends-abilities-ultimate-fuse.png.adapt.crop16x9.652w.png" alt="">
					</button>
				</div>
				<div id="sk_line">
					<div id="pas_crcl_brdr" class="outer_circle">
						<div id="pas_crcl" class="inner_circle"></div>
					</div>
					<div id="tac_crcl_brdr" class="outer_circle">
						<div id="tac_crcl" class="inner_circle"></div>
					</div>
					<div id="ult_crcl_brdr" class="outer_circle">
						<div id="ult_crcl" class="inner_circle"></div>
					</div>
				</div>
				<ul id="sk_con">
					<li id="pas_txt" class="skill_txt">
						<h6 class="sk_type">PASSIVE ABILITY</h6>
						<h5 class="sk_name">GRENADIER</h5>
						<p class="sk_exp">
							Stack an extra grenade per inventory slot.
							<br>
							Fire grenades farther, faster, and more accurately.
						</p>
					</li>
					<li id="tac_txt" class="skill_txt">
						<h6 class="sk_type">TACTICAL ABILITY</h6>
						<h5 class="sk_name">KNUCKLE CLUSTER</h5>
						<p class="sk_exp">
							Launch a cluster bomb that continuously expels airburst explosives on impact.
						</p>
					</li>
					<li id="ult_txt" class="skill_txt">
						<h6 class="sk_type">ULTIMATE ABILITY</h6>
						<h5 class="sk_name">THE MOTHERLODE</h5>
						<p class="sk_exp">
							Launch a bombardment that encircles a target area in a wall of flame.
						</p>
					</li>
				</ul>
			</div>
			<div id="sk_vid_wrap">
				<video id="pas_vid" class="sk_vid" src="video1.mp4" controls></video>
				<video id="tac_vid" class="sk_vid" src="video1.mp4" controls></video>
				<video id="ult_vid" class="sk_vid" src="video1.mp4" controls></video>
			</div>
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