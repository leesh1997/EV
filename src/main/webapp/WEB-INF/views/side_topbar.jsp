<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body{
    padding: 0;
    margin: 0;
   	font-family: 'NanumSquareRound';
 /*    overflow: hidden; */
}
</style>
</head>
<body>
	<div class="hero">
		<div class="sidebar">
			<div class="sidetext-top">
				<a href="main.do"><img src="resources/img/ev_icon-removebg-preview.png"
				style="height: auto; width: 70px;margin-top: 10px"></a>
			</div>
			<div>
				<div class="main-text-box">
					<c:choose>
						<c:when test="${info == null}">
							<a href="login.do">Login</a>
						</c:when>
						<c:when test="${info != null}">
							<a href="logout.do">Logout</a>
						</c:when>
					</c:choose>
				</div>


				<c:choose>
					<c:when test="${info != null}">
						<div class="main-text-box">
							<a href="mypage.do"> MyPage</a>
						</div>
					</c:when>
					<c:when test="${info == null}">
						<div class="main-text-box">
							<a href="#" id="btn1"> MyPage</a>
						</div>
						<script type="text/javascript">
							$("#btn1").click(function() {
								alert("로그인 후 이용해주세요");
								location.href = "login.do";
							});
						</script>
					</c:when>
				</c:choose>



				<div class="main-text-box">
					<a href="join.do">Join</a>
				</div>


			</div>
			<div class="hambuger">
				<button class="open"><a href="#">></a></button>
			</div>

		</div>
		<div class="topbar">
			<ul>
				<li style="padding-left: 20px;"><a href="main.do"><h1>EV</h1></a></li>
				<li style="float: right; margin-top: 20px; margin-right: 20px;">
					<button class="open topbt">=</button>
				</li>

			</ul>



		</div>
		<div class="ggaggong ">


			<div class="he st1">
				<A href="palette_menu.do"><img src="resources/img/bora.png"
					class="he-img st1im" alt="content">
					<div class="he-text">palette</div></A>
			</div>
			<div class="he st2">
				<a href="interior_menu.do"><img
					src="resources/img/inte1.png" class="he-img st2im">
					<div class="he-text">interior</div></a>
			</div>
			<div class="he st3">
				<a href="choise_product_or_magazine.do"><img
					src="resources/img/inte2222.PNG" class="he-img st3im">
					<div class="he-text">information</div></a>
			</div>
		<!-- 	<div class="he st4">
				<a href="view.do"><img src="resources/img/inte3.png"
					class="he-img st4im">
					<div class="he-text">view</div></a>
	
			</div> -->
			<div class="he st5">
				<a href="board.do"><img src="resources/img/inte3.png"
					class="he-img st5im">
					<div class="he-text">community</div></a>
			</div>

		</div>

	</div>



	<script>
		$(document).ready(function() {
			$('.he').hide();

		})

		var bt = $('.open');
		bt.click(function() {

			$('.st1').toggle(500);
			$('.st2').toggle(550);
			$('.st3').toggle(600);
		/* 	$('.st4').toggle(650); */
			$('.st5').toggle(650);

		})

		$(document).ready(function() {
			$('.to1').css('opacity', 1);
			$('.to2').css('opacity', 0);
			$('.to3').css('opacity', 0);
		})
	</script>
</body>
</html>