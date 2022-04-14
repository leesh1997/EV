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
<link
	rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<title>회원가입 성공</title>

<script src="common-script.js"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/login.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.joinsuc {
	line-height: 2;
}

#main {
	background-color: black;
	font-family: -webkit-body;
	border-style: none;
	height: 33px;
	width: 95px;
	border-radius: 3px;
	color: white;
}

.wrap-login100 {
	/* border: solid 4px #30467c;
 */
	width: 800px;
	height: 490px;
	padding: 150px 55px 33px 55px;
	text-align: center;
	position: relative;
	z-index: 50;
	margin: auto;
}

p {
	font-size: 25px;
	margin-top: 20px;
}

*, *:after, *:before {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
/* Box colors */
.bg-1 {
	color: #37474f;
}

/* Common button styles */
.button {
	min-width: 150px;
	/* max-width: 250px; */
	display: block;
	margin: auto;
	padding: 1em 2em;
	border: none;
	background: none;
	color: inherit;
	vertical-align: middle;
	position: relative;
	z-index: 1;
	-webkit-backface-visibility: hidden;
	-moz-osx-font-smoothing: grayscale;
	font-weight: bold;
	width: 400px;
	height: 60px;
	font-size: 18px;
	border-radius: 30px;
}

.bg-1 .button {
	color: #37474f;
	border-color: #37474f;
}

.button:focus {
	outline: none;
}

.button>span {
	vertical-align: middle;
}

/* Wapasha */
.button.button--wapasha {
	background: black;
	color: #fff;
	-webkit-transition: background-color 0.3s, color 0.3s;
	transition: background-color 0.3s, color 0.3s;
}

.button--wapasha.button--inverted {
	background: #fff;
	color: #37474f;
}

.button--wapasha::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	border: 2px solid #3f51b5;
	z-index: -1;
	border-radius:;
	opacity: 0;
	-webkit-transform: scale3d(0.6, 0.6, 1);
	transform: scale3d(0.6, 0.6, 1);
	-webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
	transition: transform 0.3s, opacity 0.3s;
	-webkit-transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
	transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
	border-radius: 30px;
}

.button--wapasha.button--inverted::before {
	border-color: #7986cb;
}

.button--wapasha:hover {
	background-color: #fff;
	color: #3f51b5;
}

.button--wapasha.button--inverted:hover {
	background-color: #37474f;
	color: #7986cb;
}

.button--wapasha:hover::before {
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
	opacity: 1;
}

hr {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 0;
	border-top: 1px solid #d3d3d3;
}

span {
	font-weight: bold;
	text-decoration: underline;
}
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<section class="header">
		<div class=" "></div>
	</section>

	<section>

		<div class="limiter">
			<div class="container-login100">
				<div class="wrap-login100">
					<img src="resources/img/ev_icon.png" width="150"
						style="display: block; margin: auto;">
					<hr>
					<p style="color: black; font-weight: bold; font-size: 45px;">환영합니다!</p>
					<p>EV 회원가입이 완료되었습니다.</p>
					<p>
						아이디는<span> ${info.m_email} </span>입니다.
					</p>
					<p>
						닉네임은<span> ${info.m_nick } </span> 입니다.
					</p>
					<br>

					<div class="box bg-1">
						<p>
							<button class="button button--wapasha button--round-s"
								type="button" onclick="location.href='main.do' "
								style="text-align: center;">메인으로</button>
						</p>
					</div>


					<!-- 						<li class="joinsuc"><a href=main.do><u>메인으로</u></a></li>
 -->

				</div>
			</div>
		</div>
	</section>


</body>
</html>
