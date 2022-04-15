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
<title>로그인</title>

<script src="common-script.js"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/login.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
 /*   body {
         background-image: url("resources/img/do2.png");
        background-repeat: no-repeat;
        background-size: cover; 
        background-color: #f6f6f6;
      }   */

/* .form-control {
  background-color: transparent;
  border: none;
  border-bottom: 3px solid black;
  color: #555;
  box-sizing: border-box;
  font-family: 'Arvo';
  font-size: 18px;
  height: 50px;
  left: 50%;
  margin: 5px 0 0 -100px;
  padding: 10px 0px;
  position: relative;
  top: 50%;
  width: 300px;

  &:focus {
    outline: none;    
  }
}

input::-webkit-input-placeholder {
  color: #AAA;
}

input:focus::-webkit-input-placeholder {
  color: dodgerblue;
}

.form-control:focus+.underline {
  transform: scale(1);
}
    */

/* .form-control {
	width: 400px;
	height: 60px;
	margin-top: 10px;
	font-size: 18px;
} */
.input-box {
	position: relative;
	margin: 10px 0;
}

.input-box>input {
	background: transparent;
	border: none;
	border-bottom: solid 1px #777777;
	padding: 20px 0px 5px 0px;
	font-size: 14pt;
	width: 100%;
}

input::placeholder {
	color: transparent;
}

input:placeholder-shown+label {
	color: #aaa;
	font-size: 14pt;
	top: 15px;
}

input:focus+label, label {
	color: #8aa1a1;
	font-size: 10pt;
	pointer-events: none;
	position: absolute;
	left: 0px;
	top: 0px;
	transition: all 0.2s ease;
	-webkit-transition: all 0.2s ease;
	-moz-transition: all 0.2s ease;
	-o-transition: all 0.2s ease;
}

input:focus, input:not(:placeholder-shown) {
	border-bottom: solid 1px #8aa1a1;
	outline: none;
}

/* .login_btn {
	width: 400px;
	height: 60px;
	font-size: 18px;
	color: white;
	font-weight: bold;
	margin-top: 20px;
	background-color: #7f7f7f;
} */

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
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<section class="header">
		<div class=" "></div>
	</section>

	<section>
		<div class="container login_main">

			<!-- loginSelect.do로 요청시 회원의 정보를 일치하는 것을 찾아서
		    	 회원의 모든 정보를 info라는 이름의 session에 저장한 후 
		    	 boardList.jsp로 이동
		     -->
			<form action="loginSelect.do" method="post">
				<div class="join_wrapper"
					style="margin: calc(50vh - 300px) auto 0px">
					<div style="text-align: center;">
						<img src="resources/img/ev_icon-removebg-preview.png" width="120" height="auto"
							alt="demo" id="btn_goMain" />
					</div>
					<br>
					<table style="width: 400px; margin: auto; text-align: center;">
						<tr>
							<td class="login_title" name="id"></td>
							<td><div class="input-box">
									<input id="id" type="text" name="id" placeholder="아이디">
									<label for="username">아이디</label>
								</div></td>
						</tr>

						<tr>
							<td class="login_title"></td>
							<td class="login_input">
								<div class="input-box">
									<input id="pw" type="password" name="pw" placeholder="비밀번호">
									<label for="password">비밀번호</label>
								</div>

							</td>

						</tr>

						<!-- 	<td colspan="2" style="margin-top: 50px;">
							<button type="submit" class="login_btn"
						>로그인</button></td> -->
					</table>
					<br>
					<div class="box bg-1">
						<p>
							<button class="button button--wapasha button--round-s"
								type="submit" style="text-align: center; font-size: 20px;">로그인</button>
						</p>
					</div>

					<br>
					<p style="text-align: center; font-weight: bold; font-size: 16px;">
						아직 회원이 아니신가요? <a href=join.do><u> 회원가입</u></a>
					</p>


				</div>
			</form>
	</section>


</body>
</html>
