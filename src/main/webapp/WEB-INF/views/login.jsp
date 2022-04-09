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
<link rel="stylesheet" href="resources/css/login.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
</style>
</head>
<body>
	<jsp:include page = "side_topbar.jsp"></jsp:include>
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
						<img src="resources/img/ev_icon.png" width="120" height="auto"
							alt="demo" id="btn_goMain" />
					</div>
					<br>
					<table style="width: 400px; margin: auto; text-align: center;">
						<tr>
							<td class="login_title" name="id"></td>
							<td class="login_input"><input class="form-control"
								type="text" name="id" placeholder="아이디를 입력하세요."></td>
						</tr>
						<tr>
							<td class="login_title"></td>
							<td class="login_input"><input class="form-control"
								type="password" name="pw" placeholder="비밀번호를 입력하세요">
							</td>
						</tr>	
						<tr >
							<td colspan="2" style="margin-top: 50px;">
							<button type="submit" class="join_btn"
						>로그인</button></td>
						</tr>
					</table>
					<br>
					

				</div>
			</form>
	</section>

	
</body>
</html>
