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
<title>마이페이지</title>

<script src="common-script.js"></script>
<link rel="stylesheet" href="resources/css/main.css" />
<link rel="stylesheet" href="resources/css/login.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.main {
	position: relative;
	z-index: 50;
}

#mypg > div{
width: 2014px;;
    background-color: #f3f3f3;
    border-top: 1px solid #e6e6e6;
    
}




</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="main">
		<section id="container">
			<div class="sub_title_wrap">
			 		<h1>마이페이지</h1>
			</div>
			
			<div id="mypg" class="item6 mypage_snb">
				<div class="mypg_header">
					<ul>
						<li>회원정보</li>
						<li>최근</li>
						<li>위시리스트</li>
						<li>나의 활동</li>
					</ul>
				</div>
			</div>
			
		</section>

	</div>



</body>
</html>
