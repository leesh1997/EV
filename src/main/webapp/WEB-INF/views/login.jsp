<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<title>Document</title>
<script src="common-script.js"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
		<div class="container">


			<!-- loginSelect.do로 요청시 회원의 정보를 일치하는 것을 찾아서
		    	 회원의 모든 정보를 info라는 이름의 session에 저장한 후 
		    	 boardList.jsp로 이동
		     -->
			<form action="loginSelect.do" method="post">			
				<div class="join_wrapper"
					style="margin: calc(50vh - 300px) auto 0px">
					<div style="text-align:center;">
						<img
						src="resources/img/ev_icon.png" width="120" height="auto"
						alt="demo" id="btn_goMain"  />
					</div> 
					<br>
					<input class="form-control" type="text" name="id" placeholder="아이디"
						style="width: 400px; height: 60px; margin: auto; font-size:18px;"> <input
						class="form-control" type="password" name="pw" placeholder="비밀번호"
						style="width: 400px; height: 60px; margin: auto; font-size:18px;"> <br>
					<div class="login" style="text-align: center;">
						<button type="submit" class="btn btn-info btn-md"
							style="width: 400px; height: 60px; font-size:18px;">로그인</button>
						<br>
						<br> <a href="join.do">회원가입</a>
					</div>
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
