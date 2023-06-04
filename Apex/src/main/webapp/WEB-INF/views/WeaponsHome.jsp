<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Weapons - FUSE.GG</title>
	<link rel="icon" href="<c:url value='resources/images/icon/fuse_gg_16.ico'/>" type="image/x-icon">
	<link rel="stylesheet" href="<c:url value='/resources/css/reset.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/css/header_footer.css'/>">
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
		function handleClick(element) {
		    var aaa = $(element).find(".weapon-text").text();
		
		    $.ajax({
		        url: "/apex/WeaponsHome",
		        type: "POST",
		        data: {
		            aaa: aaa
		        },
		        success: function (response) {
		            var weaponsTypeDiv = $(".WeaponsType");
		            weaponsTypeDiv.empty();
		
		            for (var i = 0; i < response.length; i++) {
		                var weapon = response[i];
		                var weaponName = weapon.name;
		                var weaponImg = weapon.img;
		
		                var weaponDiv = $("<div>").addClass("weapon");
		                var weaponImgElement = $("<img>").attr("src", "${pageContext.request.contextPath}" + weaponImg);
		                var weaponNameElement = $("<p>").text(weaponName);
		
		                weaponDiv.append(weaponImgElement, weaponNameElement);
		                weaponsTypeDiv.append(weaponDiv);
		            }
		
		         // 추가 코드 시작
		            $(".weapon").click(function() {
		                var name = $(this).find("p").text();
		
		                // infoWeapon.jsp로 이동
		                window.location.href = "/apex/infoWeapon?name=" + encodeURIComponent(name);
		            });
		            // 추가 코드 끝
		        },
		        error: function (xhr, status, error) {
		            console.error(error);
		        }
		    });
		}
	</script>

<style>
section{
			height: 800px;
		}
        .weapons {
            display: block;
        }

        ul {
            list-style-type: none;
            padding: 0;
            display:flex;
            justify-content:space-around;
        }

        li {
            cursor: pointer;
            padding: 10px;
             width: 150px;
    height: 50px;
   
  background-color: #445C76;
    transform: skew(-20deg);
    text-align : center;
    margin-right: 15px;
   border-bottom: 10px solid #DA292A;
    
        }

 li:hover {
        background-color: #27CD66;
        border-bottom: 10px solid gray;
    }

        .WeaponsType {
            margin-top: 10px;
        }

        .weapon {
            display: inline-block;
            margin-right: 10px;
            text-align: center;
        }
        
    .triangle {
    position: absolute;
    top: -20px;
    right: -25px;
    width: 0;
    height: 0;
    border-left: 30px solid transparent;
    border-right: 30px solid transparent;
    border-bottom: 52px solid #DA292A;
    transform: scale(0.2) rotate(40deg);
    
    }

    .selected .triangle {
        display: block;
    }

    .selected {
        position: relative;
    }

    .selected .weapon {
        display: none;
    }
      .weapon-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 100%;
        text-align: center;
        color:#F5F5F5;
    }
    .WeaponsType{
    display: flex;
   justify-content: space-around;
	margin-top: 100px;
	
  
   
   }
   .weapon{
    
   margin: 0 auto;
   cursor: pointer;
            padding: 10px;
             width: 250px;
    height: 200px;
	filter: invert(100%);
    
    text-align : center;
    margin-right: 15px;
   border-radius: 30px 30px 30px 30px;
   }   

   .weapon:hover{
   background-color: black;
   color: white;
   
   }
   .weapon:hover img {
    filter: invert(100%);
}
   
   .weapon img {
        width: 250px;
        height: 150px;
    }
    
    #header_bottom a:nth-child(2){
	border-bottom: 4px solid #DA292A;
}
    </style>
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/header_top.jsp"%>
		<%@ include file="/WEB-INF/views/header_bottom.jsp"%>
	</header>
	<section>
		<div class="weapons">
			<ul>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">AssaultRifle</span></li>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">SMG</span></li>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">LMG</span></li>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">Marksman</span></li>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">Sniper</span></li>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">Shotgun</span></li>
				<li onclick="handleClick(this)"><span class="triangle"></span>
					<span class="weapon-text">Pistol</span></li>
			</ul>
		</div>
		<div class="WeaponsType">
			<!-- 결과를 표시할 영역 -->
		</div>
	</section>
	<footer>
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
	<script>
		$(document).ready(function() {
			$("li").click(function() {
				$("li").removeClass("selected");
				$(this).addClass("selected");
			});
		});
	</script>
	
</body>
</html>