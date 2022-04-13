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
 	.wrap-login100 {
	border: solid 4px #30467c;
	width: 490px;
	height: 490px;
	padding: 30px 55px 33px 55px;
	text-align: center;
}

.joinsuc {
line-height:2;}

#main{
background-color: black;
    font-family: -webkit-body;
   
    border-style: none;
    height: 33px;
    width: 95px;
    border-radius: 3px;
    color: white;

}
.wrap-login100{
border: solid 4px #30467c;
    width: 489px;
    height: 490px;
    padding: 30px 55px 33px 55px;
    text-align: center;
    position: relative;
    z-index: 50;
    margin-left: 100px;
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
				<ul>
					<li class="joinsuc"><img src="resources/img/ev_icon.png" width="180"
						style="display: block; margin: auto;"></li>
					<li class="joinsuc"><h1>환영합니다!</h1></li>
					<li class="joinsuc"><h2>EV 회원이 되신 것을 축하합니다.</h2></li>
					<li class="joinsuc"><h2>아이디는 ${info.m_email}입니다.</h2></li>
					<li class="joinsuc"><h2>닉네임은 ${info.m_nick }입니다.</h2></li>
					<br>
					<li class="joinsuc"><a href=main.do><u>메인으로</u></a></li>
					
				</ul>
			</div>
		</div>
	</div>
	</section>


</body>
</html>
