<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href="resources/signup.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	window.addEventListener("load", function() {
		let userNumber = document.getElementById("userNumber");
		let userNumberMsg = userNumber.value; // value  , innerHTML 
		if (userNumberMsg.length > 0) {
			alert(userNumberMsg);
		}

	});

	function gotothehome() {
		window.location.href = 'home';
	}

	document.addEventListener('DOMContentLoaded', function() {
		document.getElementById('cancel')
				.addEventListener('click', gotothehome);
	});

	function success() {

		let name = document.getElementById('name_put').value;
		let id = document.getElementById('id_put').value;
		let password = document.getElementById('pw_put').value;
		let passwordCheck = document.getElementById('pw_check').value;
		let email = document.getElementById('email').value;
		let gender = document.querySelector('input[name="gender"]:checked');

		if (name === "") {
			alert("NAME을 입력해주세요.");
		} else if (id === "") {
			alert("ID를 입력해주세요.");
		} else if (password === "") {
			alert("Password를 입력해주세요.");
		} else if (password !== passwordCheck) {
			alert("Password가 일치하지 않습니다.");
		} else if (email === "") {
			alert("Email을 입력해주세요.");
		} else if (!gender) {
			alert("Gender를 선택해주세요.");
		} else {
			document.forms['regform'].submit();
		}
	}
</script>
</head>
<body>
<%@ include file="/header.jsp"%>
	<input type="hidden" id="userNumber" value="${userNumber}">
	<section>
		<form action="<%=request.getContextPath()%>/signup2" name="regform"
			method="post">
			<div id="signup_form">
				<div id="sign_up">Sing up</div>
				<table>
					<tr>
						<td>NAME</td>
						<td><input type="text" id="name_put" placeholder="이름을 적어주세요"
							class="input" name="name_put"></td>
					</tr>
					<tr>
						<td>ID</td>
						<td><input type="text" id="id_put"
							placeholder="4~15자리 영문과 숫자" class="input" name="id_put"></td>
						<td><input type="button" value="중복확인" id="id_check"></td>
					</tr>

					<tr>
						<td>Password</td>
						<td><input type="text" id="pw_put" placeholder="알파벳, 숫자 조합"
							class="input" name="pw_put" disabled="true"></td>
					</tr>

					<tr>
						<td>Password check</td>
						<td><input type="text" id="pw_check" class="input"
							name="pw_check" disabled="true"></td>
					</tr>

					<tr>
						<td>E-mail</td>
						<td><input type="text" id="email" class="input" name="email"
							disabled="true"></td>
					</tr>

					<tr>
						<td>Gender</td>
						<td><input type="radio" name="gender" value="male" id="male"
							disabled="true">남 <input type="radio" name="gender"
							value="female" id="female" disabled="true">여</td>
					</tr>

					<tr>
						<td colspan="3">
							<button id="success_btn" type="button" onclick="success()">회원가입</button>
							<button id="reset" type="reset" onclick="resetForm()">재작성</button>
							<button id="cancel" type="button" onclick="gotothehome()">취소</button>
						</td>
					</tr>

				</table>
				<div id="logo"
					style="background-image: url(resources/img/logo.png);"></div>
			</div>
		</form>
		<script>
			document.getElementById('id_check').addEventListener('click',
					function() {
						let id = document.getElementById('id_put').value;

						if (id === "") {
							alert("ID를 입력해주세요.");
							return;
						}

						$.ajax({
							type : 'POST',
							url : './check_duplication',
							data : {
								id : id
							},
							success : function(response) {
								console.log(response)
								if (response == true) {
									alert("중복된 ID입니다.");
									enableIdField();
								} else if (response == false) {
									alert("사용 가능한 ID입니다.");
									enablePostField();
									disableIdField();
								}
							},
							error : function(xhr, status, error) {
								console.error(xhr.responseText);
							}
						});
					});

			function disableIdField() {
				document.getElementById('id_put').disabled = true;
			}

			function enableIdField() {
				document.getElementById('id_put').disabled = false;
			}

			function enablePostField() {
				document.getElementById('pw_put').disabled = false;
				document.getElementById('pw_check').disabled = false;
				document.getElementById('email').disabled = false;
				document.getElementById('male').disabled = false;
				document.getElementById('female').disabled = false;
			}
			
			function resetForm() {
				document.getElementById('id_put').disabled = true;
				document.getElementById('id_put').disabled = false;
				document.getElementById('pw_put').disabled = true;
				document.getElementById('pw_check').disabled = true;
				document.getElementById('email').disabled = true;
				document.getElementById('male').disabled = true;
				document.getElementById('female').disabled = true;
			}
		</script>
	</section>
	<%@ include file="/footer.jsp"%>
</body>

</html>