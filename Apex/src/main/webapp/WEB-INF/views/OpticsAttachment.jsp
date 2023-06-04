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

section{
padding-left: 20px;

}


.Optics{
display: flex;

}

h3 {
	color: #F5F5F5;
	
}
hr{
margin-left:10px;
margin-right: 400px;
margin-bottom: 20px;

}



.image1 {
  width:800px;
  height: 600px;
}
.image2{
width: 300px;
height: 200px;
}
.yellowspan{
color:#c94912;

}
.Opticsview {
  display: flex;
  
}

.Opticsview .image2 {
  margin-right: 50px;
  margin-left: 20px; /* Add margin between the images */
}
.Opticsview .opticp{
 color: #F5F5F5;
  margin-left: 18px;	
}
.Opticsview .opticp2{
 color: #F5F5F5;
  margin-left: 18px;
}
.Opticsview .opticp3{
 color: #F5F5F5;
  margin-left: 18px;
}




</style>
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
	</header>
	<section>
	<div>
	<h3>Available Optics</h3>
	<hr>
	</div>
	<div class="Optics">
	<div>
	<img src="/apex/resources/images/Opticinfo/optics.png" class="image1"> 
	</div>
	</div>
	
		<div>
	<h3>Gallery</h3>
	<hr>
	</div>
	<!-- Opticsview1 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-1x_HCOG.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#a8a8a8;">1x HCOG "Classic"</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-1x_HCOG.webp" class="image2"> </div>
	<div class="opticp2"><span style="color:#a8a8a8;">1x Holo</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-1x-2x_1x.webp" class="image2"> </div>
	<div class="opticp3"><span style="color:#51a8d6;">1x-2x Variable Holo (1x)</span></div>
	</div>
	</div>
	
	<!-- Opticsview2 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-1x-2x_2x.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#51a8d6;">1x-2x Variable Holo (2x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-2x.webp" class="image2"> </div>
	<div class="opticp2"><span style="color:#51a8d6;">2x HCOG "Bruiser"</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-2x-4x_2x.webp" class="image2"> </div>
	<div class="opticp3"><span style="color:#b237c8;">2x-4x Variable AOG (2x)</span></div>
	</div>
	</div>
	
	<!-- Opticsview3 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-2x-4x_4x.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#b237c8;">2x-4x Variable AOG (4x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-3x.webp" class="image2"> </div>
	<div class="opticp2"><span style="color:#b237c8;">3x HCOG "Ranger"</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-6x.webp" class="image2"> </div>
	<div class="opticp3"><span style="color:#51a8d6;">6x Sniper</span></div>
	</div>
	</div>
	
	<!-- Opticsview4 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-4x-8x_4x.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#b237c8;">4x-8x Variable Sniper (4x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-4x-8x_8x.webp" class="image2"> </div>
	<div class="opticp2"><span style="color:#b237c8;">4x-8x Variable Sniper (8x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-1x_DT.webp" class="image2"> </div>
	<div class="opticp3"><span style="color:#cead21;">1x Digital Threat</span></div>
	</div>
	</div>
	
	<!-- Opticsview5 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-1x_DT_Highlight.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#cead21;">1x Digital Threat highlight</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-4x-10x_4x.webp" class="image2"> </div>
	<div class="opticp2"><span style="color:#cead21;">4x-10x Digital Sniper Threat (4x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-4x-10x_10x.webp" class="image2"> </div>
	<div class="opticp3"><span style="color:#cead21;">4x-10x Digital Sniper Threat (10x)</span></div>
	</div>
	</div>
	
	<!-- Opticsview6 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-4x-10x_4x_Highlight.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#cead21;">4x-10x Digital Sniper Threat highlight (4x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-4x-10x_10x_Highlight.webp" class="image2"> </div>
	<div class="opticp2"><span style="color:#cead21;">4x-10x Digital Sniper Threat highlight (10x)</span></div>
	</div>
	
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-6x.webp" class="image2"> </div>
	<div class="opticp3"><span style="color:#ff4e1d;">6x-10x Variable (6x)</span></div>
	</div>
	</div>
	
	<!-- Opticsview7 -->
	<div class="Opticsview">
	<div>
	<div><img src="/apex/resources/images/Opticinfo/ADS-Kraber_10x.webp" class="image2"> </div>
	<div class="opticp"> <span style="color:#ff4e1d;">6x-10x Variable (10x)</span></div>
	</div>
	</div>
	
	
	
	
	#51a8d6
	#b237c8
	#cead21
	
	

	</section>
	
	
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
</body>

</html>