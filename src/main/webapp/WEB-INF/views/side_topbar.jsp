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
</head>
<body>
	<div class="hero">
		<div class="sidebar">
			<div class="sidetext-top">
				<a href="main.do"><h1>EV</h1></a>
			</div>
			<div>
				<div class="main-text-box">
					<c:choose>
						<c:when test="${info == null}">
							<a href="login.do">Login</a>
						</c:when>
						<c:when test="${info != null}">
							<a href=#>Logout</a>
						</c:when>
					</c:choose>
				</div>
				<div class="main-text-box">
					<a href="#"> MyPage</a>
				</div>
				<div class="main-text-box">
					<a href="join.do">Join</a>
				</div>


			</div>
			<div class="hambuger">
				<button class="open">></button>
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
				<a href="#"><img src="resources/img/inte1.png"
					class="he-img st2im">
				<div class="he-text">interior</div></a>
			</div>
			<div class="he st3">
				<a href="magazine.do"><img src="resources/img/inte2222.PNG"
					class="he-img st3im">
				<div class="he-text">information</div></a>
			</div>
			<div class="he st4">
				<a href="wishlist.do"><img src="resources/img/inte3.png"
					class="he-img st4im">
				<div class="he-text">wishlist</div></a>
			</div>
			<div class="he st5">
				<a href="#"><img src="resources/img/inte3.png"
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
			$('.st4').toggle(650);
			$('.st5').toggle(700);

		})

		$(document).ready(function() {
			$('.to1').css('opacity', 1);
			$('.to2').css('opacity', 0);
			$('.to3').css('opacity', 0);
		})

		//    $('.to1').animate({opacity:'0'});
		// $('.to2').animate({opacity:'1'});
		function care() {
			if ($('.to1').css('opacity') == 1) {

				$('.to1').animate({
					opacity : '0'
				});
				$('.to2').animate({
					opacity : '1'
				});

				$('.to3').css('opacity', 0);
			} else if ($('.to2').css('opacity') == 1) {
				$('.to1').css('opacity', 0);
				$('.to2').animate({
					opacity : '0'
				});
				$('.to3').animate({
					opacity : '1'
				});
				;
			} else if ($('.to3').css('opacity') == 1) {
				$('.to1').animate({
					opacity : '1'
				});
				$('.to2').css('opacity', 0);
				$('.to3').animate({
					opacity : '0'
				});
			}
		}

		setInterval(function() {
			care();
		}, 5000);
	</script>
</body>
</html>