<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.acorn.Apex.Dto.LegendsDTO" %>
<% String rootPath = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Legends - FUSE.GG</title>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
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
					$('#s_g_n_job').html(data.job);
					$('#s_g_n_name').html(data.name);
					$('#section_legend_img_back').css({'background':'url(<%=rootPath%>/resources/images/legends/back/'+data.id+'_32_crop_bg.png)'});
					$('#section_legend_img_front').css({'background':'url(<%=rootPath%>/resources/images/legends/front/'+data.id+'_32_crop.png)'});
					$('#section_ability').css({'background':'url(<%=rootPath%>/resources/images/legends/classes/class_'+data.l_class+'.png)'});
					$('#pas_name').html(data.pas);
					$('#pas_desc').html(data.pas_con);
					$('#tac_name').html(data.tac);
					$('#tac_desc').html(data.tac_con);
					$('#ult_name').html(data.ult);
					$('#ult_desc').html(data.ult_con);
					$('#pas_img').attr('src', '<%=rootPath%>/resources/images/legends/ability/'+data.id+'_passive_ability.svg');
					$('#tac_img').attr('src', '<%=rootPath%>/resources/images/legends/ability/'+data.id+'_tactical_ability.svg');
					$('#ult_img').attr('src', '<%=rootPath%>/resources/images/legends/ability/'+data.id+'_ultimate_ability.svg');
					$('#pas_vid').attr('src', '<%=rootPath%>/resources/videos/legends/'+data.id+'_passive_ability.mp4');
					$('#tac_vid').attr('src', '<%=rootPath%>/resources/videos/legends/'+data.id+'_tactical_ability.mp4');
					$('#ult_vid').attr('src', '<%=rootPath%>/resources/videos/legends/'+data.id+'_ultimate_ability.mp4');
				} ,
				error:function(err){
					console.log(err);
				}			
			});  		
		}
		function change_vid(id) {
			$('.abil_btn, .inner_circle, .outer_circle, .abil_li, .abil_vid').each(function() {
		        $(this).css('border', 'none');
		    });
		    $('.inner_circle').css('backgroundColor', '#445C76');
		    $('.outer_circle').css('border', 'none');
		    $('.abil_li, .abil_vid').hide();
		    
		    let abil_btn_selected = $('#' + id);
		    abil_btn_selected.css('border', '2px solid #27CD66');
		    let outer_circle_selected = $('#' + id + '_crcl_brdr');
		    outer_circle_selected.css('border', '2px solid #27CD66');
		    let inner_circle_selected = $('#' + id + '_crcl');
		    inner_circle_selected.css('backgroundColor', '#27CD66');
		    let abil_li_selected = $('#' + id + '_li');
		    abil_li_selected.show();
		    let sk_vid_selected = $('#' + id + '_vid');
		    sk_vid_selected.show();
		}
    </script>
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
	</header>
	<section>
		<div id="section_legend_img_back">
			<div id="section_legend_img_front"></div>
		</div>
		<div id="section_gradient">
			<div id="s_g_name">
				<h3 id="s_g_n_job">Bombastic Explosives Expert</h3>
				<h2 id="s_g_n_name">FUSE</h2>
			</div>
			<div id="s_g_legends">
				<div class="s_g_l_class">
					<div class="s_g_l_c_wrap">
						<% Map<String, ArrayList<String>> map=(Map<String, ArrayList<String>>)request.getAttribute("map"); %>
						<% ArrayList<String> assault = map.get("assault"); %>
					    <% for (String legend : assault) { %>
							<div class="legends_profile" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">ASSAULT</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> skirmisher = map.get("skirmisher"); %>
					    <% for (String legend : skirmisher) { %>
							<div class="legends_profile" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">SKIRMISHER</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> recon = map.get("recon"); %>
					    <% for (String legend : recon) { %>
							<div class="legends_profile" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">RECON</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> support = map.get("support"); %>
					    <% for (String legend : support) { %>
							<div class="legends_profile" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
					    <% } %>
					</div>
					<div class="s_g_l_c_deco">
						<div class="s_g_l_c_d_left"></div>
						<div class="s_g_l_c_d_mid">SUPPORT</div>
						<div class="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div class="s_g_l_class">
					<div class="s_g_l_c_wrap">
						<% ArrayList<String> controller = map.get("controller"); %>
					    <% for (String legend : controller) { %>
							<div class="legends_profile" id="<%=legend%>" style="background-image: url(<%=rootPath%>/resources/images/legends/profile/<%=legend%>_square.png)" onclick="change_legend(this.id)"></div>
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
		
		<div id="section_ability">
			<div id="abil_left">
				<div id="abil_btn_wrap">
					<button id="pas" class="abil_btn" onclick="change_vid(this.id)">
						<img id="pas_img" src="<%=rootPath%>/resources/images/legends/ability/fuse_passive_ability.svg" alt="">
					</button>
					<button id="tac" class="abil_btn" onclick="change_vid(this.id)">
						<img id="tac_img" src="<%=rootPath%>/resources/images/legends/ability/fuse_tactical_ability.svg" alt="">
					</button>
					<button id="ult" class="abil_btn" onclick="change_vid(this.id)">
						<img id="ult_img" src="<%=rootPath%>/resources/images/legends/ability/fuse_ultimate_ability.svg" alt="">
					</button>
				</div>
				<div id="abil_line">
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
				<ul id="abil_ul">
					<li id="pas_li" class="abil_li">
						<h6 class="abil_type">PASSIVE ABILITY</h6>
						<h5 id="pas_name" class="abil_name">GRENADIER</h5>
						<p id="pas_desc" class="abil_desc">
							Stack an extra grenade per inventory slot. Fire grenades farther, faster, and more accurately.
						</p>
					</li>
					<li id="tac_li" class="abil_li">
						<h6 class="abil_type">TACTICAL ABILITY</h6>
						<h5 id="tac_name" class="abil_name">KNUCKLE CLUSTER</h5>
						<p id="tac_desc" class="abil_desc">
							Launch a cluster bomb that continuously expels airburst explosives on impact.
						</p>
					</li>
					<li id="ult_li" class="abil_li">
						<h6 class="abil_type">ULTIMATE ABILITY</h6>
						<h5 id="ult_name" class="abil_name">THE MOTHERLODE</h5>
						<p id="ult_desc" class="abil_desc">
							Launch a bombardment that encircles a target area in a wall of flame.
						</p>
					</li>
				</ul>
			</div>
			<div id="s_a_vidwrap">
				<video id="pas_vid" class="abil_vid" muted autoplay loop src="<%=rootPath%>/resources/videos/legends/fuse_passive_ability.mp4"></video>
				<video id="tac_vid" class="abil_vid" muted autoplay loop src="<%=rootPath%>/resources/videos/legends/fuse_tactical_ability.mp4"></video>
				<video id="ult_vid" class="abil_vid" muted autoplay loop src="<%=rootPath%>/resources/videos/legends/fuse_ultimate_ability.mp4"></video>
			</div>
		</div>
		
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>
</html>