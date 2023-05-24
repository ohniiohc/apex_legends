<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel='stylesheet' href='reset.css'>
	<link rel='stylesheet' href='header&footer.css'>
	<style>
		#header_bottom a:nth-child(1){
			border-bottom: 4px solid #DA292A;
		}
		section{
			display: flex;
			flex-direction: column;
			justify-content: center;
		}
		#section_legend-img-back{
			width: 100%;
			height: 688px;
			background: url(images/legends/fuse_32_crop_bg.png);
			background-size: cover;
			background-position: 50% 10%;
			margin-top: 0;
		}
		#section_legend-img-front{
			width: 960px;
			height: 640px;
			margin: 48px auto auto;
			background: center url(images/legends/fuse_32_crop.png);
			background-size: cover;
		}
		#section_gradient{
			height: 480px;
			position: relative;
			top: -96px;
			background: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, #05162B 18%);
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		#s_g_name{
			display: flex;	
			flex-direction: column;
			align-items: center;
		}
		#s_g_n_aka,#s_g_n_name{
			color: #F5F5F5;
		}
		#s_g_n_aka{
			font-size: 14px;
		}
		#s_g_n_name{
			margin-top: 12px;
			font-size: 48px;
		}
		/* --------------------------------------------------------------- */
		#s_g_legends{
			width: 1440px;
			padding-top: 64px;
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}
		#s_g_l_class{
			margin: 20px 32px;
		}
		#s_g_l_c_wrap{
			display: flex;
		}
		#s_g_l_c_deco{
			border-top: 4px solid #DA292A;
			display: flex;
			justify-content: center;
		}
		#s_g_l_c_d_mid{
			box-sizing: border-box;
			width: 192px;
			height: 24px;
			background: #DA292A;
			color: #F5F5F5;
			text-align: center;
			padding-top: 2px;
		}
		#s_g_l_c_d_left,#s_g_l_c_d_right{
			position: relative;
			border-bottom: calc( 24px * 1.732 ) solid #05162B;
			border-left: 24px solid transparent;
			border-right: 24px solid transparent;
		}
		#s_g_l_c_d_left{
			left: 24px;
		}
		#s_g_l_c_d_right{
			right: 24px;
		}
		.legends-img{
			width: 84px;
			height: 84px;
			margin: 0 4px;
			border-top: 4px solid #DA292A;
		}
		.legends-img:first-child,.legends-img:last-child{
			margin: 0;
		}
		.legends-img:first-child{
			margin-right: 4px;
		}
		.legends-img:last-child{
			margin-left: 4px;
		}
		/* --------------------------------------------------------------- */
		#bangalore_Professional_Soldier{
			background: center url(images/legends/assault/Bangalore_square.png);
			background-size: cover;
		}
		#revenant_Synthetic_Nightmare{
			background: center url(images/legends/assault/Revenant_square.png);
			background-size: cover;
		}
		#fuse{
			background: center url(images/legends/assault/Fuse_square.png);
			background-size: cover;
		}
		#ash{
			background: center url(images/legends/assault/Ash_square.png);
			background-size: cover;
		}
		#madmaggie{
			background: center url(images/legends/assault/Mad_Maggie_square.png);
			background-size: cover;
		}
		#ballistic{
			background: center url(images/legends/assault/Ballistic_square.png);
			background-size: cover;
		}
		/* --------------------------------------------------------------- */
		#pathfinder{
			background: center url(images/legends/skirmisher/Pathfinder_square.png);
			background-size: cover;
		}
		#wraith{
			background: center url(images/legends/skirmisher/Wraith_square.png);
			background-size: cover;
		}
		#octane{
			background: center url(images/legends/skirmisher/Octane_square.png);
			background-size: cover;
		}
		#horizon{
			background: center url(images/legends/skirmisher/Horizon_square.png);
			background-size: cover;
		}
		#valkyrie{
			background: center url(images/legends/skirmisher/Valkyrie_square.png);
			background-size: cover;
		}
		/* --------------------------------------------------------------- */
		#bloodhound{
			background: center url(images/legends/recon/Bloodhound_square.png);
			background-size: cover;
		}
		#crypto{
			background: center url(images/legends/recon/Crypto_square.png);
			background-size: cover;
		}
		#seer{
			background: center url(images/legends/recon/Seer_square.png);
			background-size: cover;
		}
		#vantage{
			background: center url(images/legends/recon/Vantage_square.png);
			background-size: cover;
		}
		/* --------------------------------------------------------------- */
		#gibraltar{
			background: center url(images/legends/support/Gibraltar_square.png);
			background-size: cover;
		}
		#lifeline{
			background: center url(images/legends/support/Lifeline_square.png);
			background-size: cover;
		}
		#mirage{
			background: center url(images/legends/support/Mirage_square.png);
			background-size: cover;
		}
		#loba{
			background: center url(images/legends/support/Loba_square.png);
			background-size: cover;
		}
		#newcastle{
			background: center url(images/legends/support/Newcastle_square.png);
			background-size: cover;
		}
		/* --------------------------------------------------------------- */
		#caustic{
			background: center url(images/legends/controller/Caustic_square.png);
			background-size: cover;
		}
		#wattson{
			background: center url(images/legends/controller/Wattson_square.png);
			background-size: cover;
		}
		#rampart{
			background: center url(images/legends/controller/Rampart_square.png);
			background-size: cover;
		}
		#catalyst{
			background: center url(images/legends/controller/Catalyst_square.png);
			background-size: cover;
		}
		/* --------------------------------------------------------------- */
	</style>
	<script>
		function change_legend(id) {
			let s_g_n_aka = document.getElementById("s_g_n_aka");
            let s_g_n_name = document.getElementById("s_g_n_name");
			let img_front = document.getElementById("section_legend-img-front");
            let img_back = document.getElementById("section_legend-img-back");
			let arr=id.split("_").map(item => item.trim());
			let aka="";
			for(let i=1; i<arr.length; i++){
				aka+=arr[i]+" ";
			}
			aka=aka.trimEnd();
			let lower=arr[0].toLowerCase();
			let upper=arr[0].toUpperCase();
			img_front.style.backgroundImage = "url('images/legends/"+lower+"_32_crop.png')";
			img_back.style.backgroundImage = "url('images/legends/"+lower+"_32_crop_bg.png')";
            s_g_n_aka.innerHTML = aka
            s_g_n_name.innerHTML = upper;
        }
    </script>
</head>
<body>
	<header>
		<div id="header_top">
			<a id="h_t_logo" href="">FUSE.GG</a>
		</div>
		<div id="header_bottom">
			<a class="h_b_link" href="">
				Legends
			</a>
			<a class="h_b_link" href="">
				Weapons
			</a>
			<a class="h_b_link" href="">
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
				<h3 id="s_g_n_aka">Bombastic Explosives Expert</h3>
				<h2 id="s_g_n_name">FUSE</h2>
			</div>
			<div id="s_g_legends">
				<div id="s_g_l_class">
					<div id="s_g_l_c_wrap">
						<div class="legends-img" id="bangalore_Professional_Soldier" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="revenant_Synthetic_Nightmare" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="fuse" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="ash" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="madmaggie" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="ballistic" onclick="change_legend(this.id)"></div>
					</div>
					<div id="s_g_l_c_deco">
						<div id="s_g_l_c_d_left"></div>
						<div id="s_g_l_c_d_mid">ASSAULT</div>
						<div id="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div id="s_g_l_class">
					<div id="s_g_l_c_wrap">
						<div class="legends-img" id="pathfinder" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="wraith" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="octane" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="horizon" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="valkyrie" onclick="change_legend(this.id)"></div>
					</div>
					<div id="s_g_l_c_deco">
						<div id="s_g_l_c_d_left"></div>
						<div id="s_g_l_c_d_mid">SKIRMISHER</div>
						<div id="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div id="s_g_l_class">
					<div id="s_g_l_c_wrap">
						<div class="legends-img" id="bloodhound" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="crypto" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="seer" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="vantage" onclick="change_legend(this.id)"></div>
					</div>
					<div id="s_g_l_c_deco">
						<div id="s_g_l_c_d_left"></div>
						<div id="s_g_l_c_d_mid">RECON</div>
						<div id="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div id="s_g_l_class">
					<div id="s_g_l_c_wrap">
						<div class="legends-img" id="gibraltar" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="lifeline" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="mirage" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="loba" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="newcastle" onclick="change_legend(this.id)"></div>
					</div>
					<div id="s_g_l_c_deco">
						<div id="s_g_l_c_d_left"></div>
						<div id="s_g_l_c_d_mid">SUPPORT</div>
						<div id="s_g_l_c_d_right"></div>
					</div>
				</div>
				<div id="s_g_l_class">
					<div id="s_g_l_c_wrap">
						<div class="legends-img" id="caustic" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="wattson" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="rampart" onclick="change_legend(this.id)"></div>
						<div class="legends-img" id="catalyst" onclick="change_legend(this.id)"></div>
					</div>
					<div id="s_g_l_c_deco">
						<div id="s_g_l_c_d_left"></div>
						<div id="s_g_l_c_d_mid">CONTROLLER</div>
						<div id="s_g_l_c_d_right"></div>
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