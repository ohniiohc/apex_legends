<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Weapon Information</title>
<style>
* {
   padding: 0;
   margin: 0;
}

p {
   color: #F5F5F5;
}

section {
   text-Align: Center;
}

weaponname {
   margin-bottom: 20px;
}

.weaponType {
   margin-bottom: 20px;
}

.WeaponAmmo {
   margin-bottom: 20px;
}

.WeaponAmmo img {
   width: 30px;
   height: 30px;
   vertical-align: middle; /* 이미지를 수직 가운데 정렬 */
   margin-bottom: 5px;
}

.WeaponFire img {
   margin-right: 5px;
}

.WeaponFire {
   margin-bottom: 20px;
}

.damage {
   display: flex;
   justify-content: center;
   align-items: center;
   flex-wrap: wrap;
   margin-top: 10px;
   margin-bottom: 20px;
   color: #F5F5F5;
}

.damage>div {
   width: 200px;
   text-align: center;
   margin-bottom: 10px;
}

.technical p {
   margin-bottom: 20px;
}

a {
   list-style: none;
   text-decoration: none;
}

.Attachment.Slots p {
   color: #0A0A0A;
   margin-bottom: 20px;
   filter: none;
}

@font-face {
   font-family: 'Hanson';
   src: url('fonts/Hanson-Bold.otf') format('opentype');
   font-weight: normal;
   font-style: normal;
}

@font-face {
   font-family: 'YdestreetB';
   src: url('fonts/YdestreetB.otf') format('opentype');
   font-weight: normal;
   font-style: normal;
}

body {
   min-width: 1440px;
   position: relative;
   font-family: 'Hanson';
   background: #05162B;
}
/* ------------------------------ */
/* ----------header_start---------- */
/* ------------------------------ */
header {
   width: 100%;
}

#header_top, #header_bottom {
   padding: 0 36px;
   background: linear-gradient(90deg, #0B1422 0%, #042D56 100%);
}

#header_top {
   height: 60px;
   display: flex;
   align-items: center;
}

#h_t_logo {
   font-size: 24px;
   color: #F5F5F5;
   text-decoration: none;
   border-bottom: 4px solid #DA292A;
}

#header_bottom {
   height: 40px;
   display: flex;
}

.h_b_link {
   height: 100%;
   padding: 0 12px;
   color: #F5F5F5;
   line-height: 40px;
   text-decoration: none;
   box-sizing: border-box;
}

.h_b_link:hover {
   color: #DA292A;
   /* border-bottom: 4px solid #DA292A; */
}
/* ------------------------------ */
/* ----------header_end---------- */
/* ------------------------------ */

/* ------------------------------ */
/* ----------footer_start---------- */
/* ------------------------------ */
footer {
   height: 180px;
   padding-top: 36px;
   font-family: 'YdestreetB';
   color: #445C76;
   background-color: #0B1422;
}

#footer_left {
   padding: 36px;
   border-top: 1px solid #445C76;
}

#f_l_title {
   font-size: 14px;
   margin-bottom: 12px;
}

#f_l_content {
   font-size: 10px;
}
/* ------------------------------ */
/* ----------footer_end---------- */
/* ------------------------------ */
</style>
</head>
<body>
   <header>
      <div id="header_top">
         <a id="h_t_logo" href="">FUSE.GG</a>
      </div>
      <div id="header_bottom">
         <a class="h_b_link" href=""> Legends </a> <a class="h_b_link" href="">
            Weapons </a> <a class="h_b_link" href=""> Maps </a> <a class="h_b_link"
            href=""> Forums </a>
      </div>
   </header>
   <section>
      <c:forEach var="player" items="${playerInfo}">
         <p style="color: white;">${player}</p>
         
          
         
    
         <div>
            <img src="${player.avatar}"> <span style="color: white;">${player.name}</span>
         </div>
         <div>
            ${player.level}
            <div>
               <img src="${player.rankImg}"> ${player.rankScore}
               ${player.rankName}
            </div>
         </div>
         <div>
            ${player.legendName}
            <ul>
               <c:forEach var="legendData" items="${player.selecteddata}">
                  <li>${legendData.name}:${legendData.value}</li>
               </c:forEach>
            </ul>

         </div>

 html
Copy code
<div>
   <ul>
      <c:forEach var="legendInfo" items="${player.legendInfo}">
         <li>${legendInfo.legendname}</li>
        
         <li>
            <ul>
               <c:forEach var="data" items="${legendInfo.data}">
                  <li>${data.name}: ${data.value}</li>
               </c:forEach>
            </ul>
         </li>
      </c:forEach>
   </ul>
</div>
 <div>
    <h3>All Champions</h3>
   
    
      
 
  </div>
         

      </c:forEach>

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