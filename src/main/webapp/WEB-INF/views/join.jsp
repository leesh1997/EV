<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<script src="common-script.js"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/join.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
</style>
</head>
<body>
	<div class="hero">
		<div class="sidebar">
			<div class="sidetext-top">
				<h1>EV</h1>
			</div>
			<div>
				<div class="main-text-box">Login</div>
				<div class="main-text-box">Join</div>
				<div class="main-text-box">HeHe</div>
			</div>
			<div class="hambuger">
				<button class="open">></button>
			</div>
		</div>
		<div class="topbar">
			<div>EV</div>

			<div class="topbtn">
				<button class="open topbt">=</button>
			</div>
		</div>
		<div class="ggaggong">
			<div class="he st1">
				<img src="img/bora.png" class="he-img st1im" alt="content" />
				<div class="he-text">content</div>
			</div>
			<div class="he st2">
				<img src="img/inte1.png" class="he-img st2im" />
				<div class="he-text">content</div>
			</div>
			<div class="he st3">
				<img src="img/inte2222.PNG" class="he-img st3im" />
				<div class="he-text">content</div>
			</div>
			<div class="he st4">
				<img src="img/inte3.png" class="he-img st4im" />
				<div class="he-text">content</div>
			</div>
		</div>
	</div>
	<section class="header">
		<div class=" "></div>
	</section>

	<section>
		<form action="#" method="post">
			<div class="main">
				<div class="join_wrapper"
					style="margin: calc(50vh - 300px) auto 0px">
					<div style="text-align: center;">
						<img src="resources/img/ev_icon.png" width="150" height="auto"
							alt="demo" id="btn_goMain" />
					</div>
					<hr>
					<div class="join">
						<label class="join_title">아이디(e-mail)</label>
							<div class="input-group email-input errored">
								<span class="email-input__local"><input
									class="form-control" placeholder="이메일" size="1" value=""></span><span
									class="email-input__separator">@</span><span
									class="email-input__domain"><select
									class="form-control empty"><option value=""
											disabled="">선택해주세요</option>
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="outlook.com">outlook.com</option>
										<option value="icloud.com">icloud.com</option>
										<option value="_manual">직접입력</option></select> </span>
							</div>
					</div>
					<div class="join">
						<label class="join_title">비밀번호</label><br> <input type="password" name="pw" id="pw"
								class="join_input" size="20" maxlength="30" height="120px" />
					</div>
					<div class="join">
						<label class="join_title">비밀번호 확인</label><br> <input type="password" name="pw_check" id="pw_check"
								class="join_input" size="20" maxlength="30" height="120px" />
					</div>
					<div class="join">
						<label class="join_title">이름</label><br> <input type="text"
							name="name" id="name" class="join_input" size="20" maxlength="30"
							height="120px" />
					</div>
					<div class="join">
						<label class="join_title">닉네임</label><br> <input type="text"
							name="nick" id="nick" class="join_input" size="20" maxlength="30"
							height="120px" />
					</div>
					<div class="join">
						<label class="join_title">생년월일</label><br> <input type="date"
							name="birthdate" id="birthdate" class="join_input" size="20"
							maxlength="30" height="120px" />
					</div>
					<div class="join">
						<label class="join_title">성별</label><br> <input type="radio"
							id="man" name="gender" value="남자" /> <label for="man">남자</label>
						<input type="radio" id="woman" name="gender" value="여자" /> <label
							for="woman">여자</label> <input type="radio" id="none"
							name="gender" value="선택안함" /> <label for="none">선택안함</label>
					</div>
					<div class="join">
						<label class="join_title">주소</label><br>
						<input type="text" name="nick" id="nick" class="join_input"
							size="20" maxlength="30" height="120px" />
					</div>
					<div class="join">
						<label class="join_title">주거형태</label><br>
						<select id="ftype" name="ftype">
							<option value="원룸">원룸</option>
							<option value="오피스텔">오피스텔</option>
							<option value="아파트">아파트</option>
							<option value="연립">연립</option>
							<option value="빌라">빌라</option>
							<option value="주택">주택</option>
						</select>
					</div>
					<div class="join">
						<label class="join_title">가구 수</label><br> <input type="text"
							name="fsize" id="size" class="join_input" size="20"
							maxlength="30" height="120px" placeholder="ex) 1인" />
					</div>

				</div>
				<button class="joinbtn" type="submit"></button>			
			</div>
		</form>
	</section>

	<script>
		$(document).ready(function() {
			$(".he").hide();
		});
		var bt = $(".open");
		bt.click(function() {
			$(".st1").toggle(500);
			$(".st2").toggle(600);
			$(".st3").toggle(700);
			$(".st4").toggle(800);
			if (bt.text() == ">") {
				bt.text("<");
			} else {
				bt.text(">");
			}
		});
		//    $('.st1').hover(function(){
		//        $('.st1im').css('opacity','0.5')
		//    },500)
	</script>
</body>
</html>
