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