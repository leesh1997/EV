<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<!-- <link rel = "stylesheet" href="resources/css/wishlist.css" type="text/css">
 -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<style>
.kXGNQj {
	position: fixed;
	padding: 0px 0px 0px;
	margin: 0px auto;
	margin-top: -20px;
	color: rgb(255, 255, 255);
	background-color: black;
	height: 235px;
	width: 100%;
	z-index: 90;
}

.cOPbLJ {
	padding: 20px 0px 24px;
}

h1 {
	font-size: inherit;
}

.cOPbLJ>a {
	display: inline-block;
	font-family: Musinsa, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
	font-size: 38px;
	font-weight: bold;
	margin-left: 30px;
	color: rgb(255, 255, 255);
	line-height: 52px;
	margin-top: 15px;
}

a {
	/*    color: inherit; */
	text-decoration: none;
}

.dYNmgC {
	position: absolute;
	right: 0px;
	top: 20px;
	margin-right: 50px;
}

.JsGLX {
	overflow: hidden;
	padding-left: 40px;
	margin-top: -30px;
}

.cXbinu {
	float: left;
	width: 100px;
	height: 100px;
	background: url(resources/img/user2.png) 50% 50%/cover no-repeat;
	border-radius: 100%;
	background-color: #ededed;
	background-size: 101px;
	/* margin-left: 7px; */
	margin-top: 20px
}

.humJtF {
	display: inline-block;
	min-width: 18px;
	height: 18px;
	padding: 4px 5px 0px;
	border-radius: 18px;
	background-color: rgb(0, 120, 255);
	box-sizing: border-box;
	font-family: Musinsa, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
	font-size: 11px;
	font-weight: normal;
	line-height: 1;
	color: rgb(255, 255, 255);
	text-align: center;
	margin: -2px 0px 0px 4px;
}

.dZrJws {
	float: left;
	min-width: calc(100% - 970px);
	min-height: 148px;
	padding-left: 30px;
	box-sizing: border-box;
	margin-top: 10px;
}

.dYNmgC>a {
	display: inline-flex;
	-webkit-box-align: center;
	align-items: center;
	padding: 4px 0px;
	margin-left: 32px;
	font-size: 14px;
	line-height: 22px;
}

.JsGLX {
	overflow: hidden;
	padding-left: 100px;
}

.ebnvat {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	vertical-align: baseline;
	line-height: 60px;
}

.ebnvat>strong {
	display: inline-block;
	font-size: 35px;
	line-height: 87px;
	color: rgb(255, 255, 255);
	margin-top: 15px;
}

.ebnvat>a {
	display: inline-block;
	padding: 4px;
	margin: 32px 0px 0px 4px;
	font-size: 12px;
	line-height: 18px;
	color: rgb(145, 145, 145);
}

.xMHPc {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
}

.xMHPc>em {
	font-family: Musinsa, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
	font-size: 24px;
	line-height: 36px;
	color: rgb(255, 255, 255);
}

.xMHPc>span {
	display: inline-flex;
	margin: 4px 0px 0px 8px;
	font-size: 14px;
	line-height: 21px;
	color: rgb(145, 145, 145);
}

.dwgQoo {
	display: flex;
	-webkit-box-align: center;
	align-items: center;
	margin-top: 4px;
	font-size: 14px;
	line-height: 21px;
	color: rgb(209, 209, 209);
}

.dwgQoo>a {
	display: inline-block;
	margin-left: 8px;
	font-size: 12px;
	line-height: 18px;
	color: rgb(145, 145, 145);
}

.fJZyji {
	display: flex;
	float: left;
	padding: 40px 0px 0px 20px;
}

.fJZyji>a {
	display: flex;
	flex-direction: column;
	width: 180px;
	margin-right: 10px;
}

* {
	margin: 0;
	padding: 0;
}

.fJZyji>a>em {
	display: block;
	margin: 8px 0px;
	font-size: 14px;
	line-height: 21px;
}

.fJZyji>button>em {
	display: block;
	margin: 8px 0px;
	font-size: 14px;
	line-height: 21px;
}

.fJZyji>button {
	display: flex;
	flex-direction: column;
	width: 180px;
	margin-right: 10px;
}

em {
	font-style: normal;
	color: white;
}

.fJZyji>a>strong {
	display: block;
	font-family: Musinsa, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
	font-size: 30px;
	line-height: 45px;
	color: white;
}

.main2 {
	position: relative;
	z-index: 50;
	margin-left: 100px;
}

/*  회원정보 수정  */
.join_input, #ftype {
	width: 320px;
	height: 30px;
	margin-top: 15px;
	margin-bottom: 5px;
	margin-left: 15px;
	/* 	border: 1px solid #d1d1d1;
 */
	border-radius: 5%;
}

.input_gender {
	width: 15px;
	height: 15px;
	margin-top: 30px;
	margin-bottom: 15px;
	margin-left: 7px;
}

td.join_title {
	font-weight: bold;
}

.join_input2 {
	width: 320px;
	height: 30px;
	margin-top: 10px;
	margin-bottom: 5px;
	margin-left: 15px;
	border: 1px solid #d1d1d1;
}

/* 회원가입 버튼 */
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
	width: 450px;
	height: 60px;
	font-size: 18px;
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

.mini_title {
	margin-top: 15px;
	margin-left: 65px;
	font-size: 15px;
	padding-top: 235px;
	font-weight: bold;
}
/* 위시리스트 */
.main-content {
	display: block;
	position: relative;
	margin-left: 100px;
	height: max-contents;
	width: calc(100vw - 100px);
	z-index: 50;
}

.choose {
	display: flex;
	position: relative;
	margin-top: 50px;
	justify-content: center;
	flex-direction: column;
	margin: 0 auto;
}

.title {
	/* display: block; */
	
}
/* .half{
	display: flex;
	position:relative;
	width: 50%;
	justify-content: center;
}
.half-img{
	margin-top: 10%;
	max-width: 50%;
	height: auto;
} */
body {
	/* overflow: hidden; */
	padding: 0;
	margin: 0;
}

.title {
	width: 90%;
	margin-left: 5%;
	border-bottom: 1px solid rgba(0, 0, 0, .2);
	font-size: 18px;
	font-weight: bold;
	margin-top: 50px;
}

button.delete {
	float: right;
	border: none;
	background-color: white;
	margin-right: 10px;
}

button.updown {
	float: right;
}

.list_box {
	margin-bottom: 20px;
}

.trashimg {
	height: 16px;
	width: auto;
}

.lis {
	display: block;
	position: relative;
	justify-content: center;
}

@media ( max-width : 768px) {
	.main-content {
		margin-left: 0;
	}
	.main-content {
		width: 100vw;
	}
	.title {
		width: 95%;
		margin-left: 0;
	}
}

button.updown {
	background-color: white;
	border: none;
	border-radius: 5%;
}

.colore_list {
	position: relative;
	display: inline-block;
}

.delete {
	float: right;
}

.jjim_img {
	width: 20vw;
	height: auto
}

.eeun-ae {
	display: inline-block;
	position: relative;
	vertical-align: top;
}

.jjim_img_list {
	width: max-content;
	height: max-content;
}

.jjim_text_list {
	width: auto;
}

.palette {
	width: 6vw;
	height: 6vw;
	border-radius: 50%;
	margin-right: 10px;
	border: 0.7vw solid #f1f5fc;
}

.inpalette {
	margin-top: 5px;
	margin-bottom: 5px;
	display: flex;
	flex-direction: row;
}

.palette-name {
	margin-top: 5px;
}

.point {
	display: flex;
	flex-direction: column;
	margin-right: 10px;
	margin-bottom: 10px;
}

input[type='checkbox'] {
	/* margin-top: 3vw; */
	padding-right: 20px;
}

.check {
	margin-right: 10px;
	display: flex;
	flex-direction: row;
}

.list-full {
	width: auto;
	height: auto;
	max-height: 600px;
	overflow: auto;
}

.list-full::-webkit-scrollbar {
	width: 2px;
}

.list-full::-webkit-scrollbar-thumb {
	background-color: black;
	width: 2px;
	border-radius: 10px;
}

.list-full::-webkit-scrollbar-track {
	background-color: white;
}

.cl1 {
	margin-left: 10px;
}
/* input[type='text']{
	display:none;
}
 */

/*  나의 활동 */
input#num_check,div.num{
text-align: center;
}

tr.tr1{
height: 21px;
}

tr.tr2{
height: 30px;
border: 2px solid #d1d1d1;
}

</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="main2">
		<div id="commonMypage">
			<section class="common-mypage__sc-5trtbg-0 kXGNQj">
				<h1 class="common-mypage__sc-5trtbg-1 cOPbLJ">
					<a href="mypage.do"
						style="color: white; margin-top: -15px; margin-left: 50px;">My
						Page</a>
				</h1>
				<div class="common-mypage__sc-5trtbg-3 JsGLX">
					<div class="common-mypage__sc-wme82i-0 cXbinu"></div>
					<div class="common-mypage__sc-1loaj4c-0 dZrJws">
						<div class="common-mypage__sc-1loaj4c-1 ebnvat">
							<strong>${info.m_nick}</strong>
						</div>
						<div class="common-mypage__sc-1loaj4c-2 xMHPc">

							<!-- 회원탈퇴 -->
							<form action="memberDelete.do" method="post" id="memForm">
								<input type="hidden" name="m_email" value="${info.m_email}">
								<input type="hidden" name="m_pw" value="${info.m_pw}">
								<button type="submit" id="delBtn"
									style="text-decoration: underline; background: none;"
									onclick="mDelete">회원 탈퇴</button>
								<script type="text/javascript">
									$("#delBtn").click(function() {
										alert('탈퇴 완료')
									});
								</script>
							</form>
						</div>
					</div>
					<div class="common-mypage__sc-1m1vyak-0 fJZyji">
						<!-- 최근 조회 -->
						<button class="recentBtn" style="background: none;">
							<svg data-name="Layer 1" id="Layer_1" width="35px" height="35px"
								viewBox="0 0 500 500" style="fill: white"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M478,256A222,222,0,0,1,99,413,220.55,220.55,0,0,1,34,256H63.92c0,105.91,86.17,192.08,192.08,192.08S448.08,361.91,448.08,256,361.91,63.92,256,63.92A191.8,191.8,0,0,0,116.58,124H175v29.92H70V49H99.93v49.3A221.93,221.93,0,0,1,478,256ZM250,139V280H373V250H280V139Z" /></svg>
							<em>최근 조회 &gt;</em>
						</button>

						<!-- 위시리스트 -->
						<a href="wishlist.do"> <svg enable-background="new 0 0 48 48"
								height="35px" id="Layer_1" version="1.1" viewBox="0 0 48 48"
								width="35px" fill="white" xml:space="preserve"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
								<path clip-rule="evenodd"
									d="M24.804,43.648L24,44l-0.804-0.352C12.862,37.313,2,22.893,2,14.884  C2.035,8.326,7.404,3.002,14,3.002c4.169,0,7.849,2.128,10,5.349c2.151-3.221,5.831-5.349,10-5.349c6.596,0,11.965,5.324,12,11.882  C46,22.893,35.138,37.313,24.804,43.648z M34,4.993c-3.354,0-6.469,1.667-8.335,4.46L24,11.946l-1.665-2.494  C20.469,6.66,17.354,4.993,14,4.993c-5.484,0-9.971,4.442-10,9.891c0,7.064,10.234,20.808,20,26.917  c9.766-6.109,20-19.852,20-26.907C43.971,9.435,39.484,4.993,34,4.993z"
									fill-rule="evenodd" /></svg><em>위시리스트 &gt;</em></a>

						<!-- 나의 활동 -->
						<button class="logBtn" style="background: none;">
							<svg enable-background="new 0 0 32 32" height="35px" id="svg2"
								version="1.1" viewBox="0 0 32 32" width="35px"
								xml:space="preserve" xmlns="http://www.w3.org/2000/svg"
								xmlns:cc="http://creativecommons.org/ns#"
								xmlns:dc="http://purl.org/dc/elements/1.1/"
								xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
								xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
								xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
								xmlns:svg="http://www.w3.org/2000/svg">
								<g id="background">
								<rect fill="none" height="32" width="32" /></g>
								<g id="comment_x5F_accept" fill="white">
								<path
									d="M26,8H8v2h18V8z M26,12H8v2h15h3V12z M30,17.35V2H2l0,28h2.414l6.002-6h3.643c0.498,4.498,4.309,7.998,8.941,8   c4.97-0.002,8.998-4.03,9-9C31.999,20.858,31.248,18.895,30,17.35z M14.059,22H9.584L4,27.583V4h24v11.518   C26.569,14.56,24.851,14,23,14c-2.143,0-4.106,0.751-5.652,2H8v2h7.517C14.734,19.169,14.221,20.531,14.059,22z M23,29.882   c-3.801-0.008-6.876-3.083-6.885-6.882c0.009-3.801,3.084-6.876,6.885-6.885c3.799,0.009,6.874,3.084,6.882,6.885   C29.874,26.799,26.799,29.874,23,29.882z" />
								<polygon points="18,23 20,21 22,23 26,19 28,21 22,27  " /></g></svg>
							<em>나의 활동 &gt;</em>
						</button>

						<!-- 회원정보 수정 -->
						<button class="updateBtn" style="background: none;">
							<svg width="38" height="38" viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M31.6666 31.3889H17.7333M6.33325 24.4617L24.6781 6.27777L31.6666 13.205L13.3218 31.3889H6.33325V24.4617Z"
									stroke="white"></path></svg>
							<em>회원정보 수정 &gt;</em>
						</button>


					</div>
				</div>
			</section>
		</div>

		<!-- 회원정보 수정 -->
		<div class="update">
			<form action="memberUpdate.do" method="post">
				<div class="main3">
					<p class="mini_title">My Page > 회원정보 수정</p>
					<div class="join_wrapper" style="margin: 15px auto;">

						<hr style="opacity: 0.5;">

						<table style="margin: auto;">
							<tr>
								<td class="join_title">아이디</td>
								<td class="join_input">
									<%-- <input type="text"
										name="user_email" id="user_email" class="join_input2" required
										value="${info.m_email}"
										style="width: 320px; height: 30px; margin-left: 15px; border: 1px solid #d1d1d1"
										placeholder="이메일 주소"> --%> <!-- <span id="middle">@</span> -->
									<!-- <input
										type="text" id="email_address" class="join_input2"
										name=email_address list="user_email_address"
										style="width: 140px; height: 30px; border: 1px solid #d1d1d1; border-radius: 5%;"> -->
									<p
										style="width: 320px; height: 30px; margin-left: 15px; border: 1px solid #d1d1d1">${info.m_email}</p>
									<input id="m_id" name="m_email" value="${info.m_email}"
									style="display: none"> <datalist
										id="user_email_address">
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="icloud.com">icloud.com</option>
										<option value="직접입력">직접입력</option>
									</datalist> <input type="hidden" id="m_email" value="" oninput="checkId()">
									<!-- <button class="btn btn-info btn-sm" id="idCheck" type="button">중복체크</button> -->
								</td>
							</tr>
							<tr>
								<td></td>
								<td><p id="idCheck"
										style="text-align: left; margin-left: 15px; margin-top: 0px; margin-bottom: 5px;"></p></td>
							</tr>
							<tr>
								<td class="join_title">비밀번호</td>
								<td class="join_input"><input type="password" name="m_pw"
									id="pw" class="join_input2" size="20" maxlength="30"
									height="120px" placeholder="비밀번호" /></td>
							</tr>
							<tr>
								<td class="join_title">비밀번호 확인</td>
								<td class="join_input"><input type="password" id="checkpw"
									name="checkpw" class="join_input2" onkeyup="passConfirm()"
									size="20" maxlength="30" height="120px" placeholder="비밀번호 확인" /></td>
							</tr>
							<tr>
								<td></td>
								<td><p id="pwCheck"
										style="text-align: left; margin-left: 15px; margin-top: 0px; margin-bottom: 5px"></p></td>
							</tr>
							<tr>
								<td class="join_title">이름</td>
								<td class="join_input"><input type="text" name="m_name"
									id="name" class="join_input2" size="20" maxlength="30"
									height="120px" placeholder="이름" value="${info.m_name}" /></td>
							</tr>
							<tr>
								<td class="join_title">닉네임</td>
								<td class="join_input"><input type="text" name="m_nick"
									id="nick" class="join_input2" size="20" maxlength="30"
									height="120px" placeholder="닉네임" value="${info.m_nick}" /></td>
							</tr>
							<tr>
								<td></td>
								<td><p id="nickCheck"
										style="text-align: left; margin-left: 15px; margin-top: 0px; margin-bottom: 5px;"></p></td>
							</tr>
							<tr>
								<td class="join_title">생년월일</td>
								<td class="join_input">
									<!-- <input type="date"
										name="m_birthdate" id="birthdate" class="join_input2"
										size="20" maxlength="30" height="120px" placeholder="" /> -->
									<p
										style="width: 320px; height: 30px; margin-left: 15px; border: 1px solid #d1d1d1">
										<c:set var="tel" value="${fn:split(info.m_birthdate,' ')}" />
										<c:forEach var="telNum" items="${tel}" varStatus="g">
											<c:if test="${g.count == 1}">${telNum}</c:if>
										</c:forEach>
									</p>
								</td>
							</tr>
							<tr>
								<td class="join_title">성별</td>
								<td class="join_input" colspan="2"><input type="radio"
									name="m_gender" value="남" class="gender"
									style="margin-top: 15px; margin-left: 20px;"
									<c:if test="${info.m_gender eq '남'}">checked</c:if> />남자<input
									type="radio" name="m_gender" value="여" class="gender"
									style="margin-top: 15px; margin-left: 20px;"
									<c:if test="${info.m_gender eq '여'}">checked</c:if> />여자<input
									type="radio" name="m_gender" value="x" class="gender"
									style="margin-top: 15px; margin-left: 20px;"
									<c:if test="${info.m_gender eq 'x'}">checked</c:if> />선택 안함</td>
							</tr>
							<tr>
								<td class="join_title">주소</td>
								<td class="join_input"><input type="text" name="m_addr"
									id="addr" class="join_input2" size="20" maxlength="30"
									height="120px" placeholder="주소" value="${info.m_addr}" /></td>
							</tr>
							<tr>
								<td class="join_title">주거 형태</td>
								<td class="join_input"><select id="ftype" name="m_ftype"
									value="${info.m_ftype}"
									style="width: 320px; height: 30px; border: 1px solid #d1d1d1; margin-left: 15px; margin-top: 15px;">
										<option value="원룸">원룸</option>
										<option value="오피스텔">오피스텔</option>
										<option value="아파트">아파트</option>
										<option value="연립">연립</option>
										<option value="빌라">빌라</option>
										<option value="주택">주택</option>
								</select></td>
							</tr>
							<tr>
								<td class="join_title">가구 수</td>
								<td class="join_input"><input type="text" name="m_fsize"
									value="${info.m_fsize}" id="size" class="join_input2" size="20"
									maxlength="30" height="120px" placeholder="ex) 1인" /></td>
							</tr>
						</table>

						<hr style="opacity: 0.5;">
						<!-- 					<button type="submit" class="join_btn">회원가입</button>
 -->
						<div class="box bg-1">
							<p>
								<button class="button button--wapasha button--round-s"
									type="submit" style="text-align: center;">회원정보 수정</button>
							</p>
						</div>
					</div>
				</div>
			</form>
		</div>

		<!-- 최근 조회 -->
		<div class="recent">
			<p class="mini_title">My Page > 최근 조회</p>
			<div class="choose">
				<div class="list_box">
					<form action="pwish_delete.do" method="post">
						<div class="title">
							Interior
							<button type="button" class="no1 updown">Open</button>
							<!-- <button class="delete">
								<img src="resources/img/trash.png" class="trashimg trash1">
							</button> -->
						</div>
						<div class="title list1 lis">
							<%-- <fmt:formatNumber var = "page" value="${fn:length(p_list)}"/>
		<fmt:parseNumber var = "cnt" integerOnly="true" value="${((page)/10)+1 }"/> --%>
							<div class="list-full">
								<c:forEach var="p_list" items="${ p_list}" varStatus="i">
									<div class="inpalette">
										<div class="check">
											<input type="checkbox" name="delete_seq"
												value="${p_list.pl_seq}">
											<%-- 			<input type="text" name="pl_seq" value="${p_list.pl_seq}"> --%>


											<div class="point">

												<div class="palette cl1"
													style="background-color:${p_list.pl_c1};"></div>
												<div class="palette-name">${p_list.pl_seq}</div>
											</div>
											<div class="point">

												<div class="palette cl2"
													style="background-color: ${p_list.pl_c2}"></div>
												<div class="palette-name">${cnt }</div>
											</div>
											<div class="point">

												<div class="palette cl3"
													style="background-color: ${p_list.pl_c3}"></div>
												<div class="palette-name">색상</div>
											</div>
											<div class="point">

												<div class="palette cl4"
													style="background-color:${p_list.pl_c4}"></div>
												<div class="palette-name">색상</div>
											</div>
											<div class="point">

												<div class="palette cl5"
													style="background-color: ${p_list.pl_c5}"></div>
												<div class="palette-name">색상</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<%-- <div>
					<ul>
						<c:forEach var="pg_num" begin="1" end="${cnt }">
							<li>${pg_num}</li>
						</c:forEach>
						
					</ul>
				</div>
			 --%>
						</div>
					</form>
				</div>
			</div>

			<div class="choose">
				<div class="list_box">
					<div class="title">
						Video
						<button type="button" class="no2 updown">Open</button>
						<!-- <button class="delete">
						<img src="resources/img/trash.png" class="trashimg trash2">
					</button> -->
					</div>
					<div class="title list2 lis">
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> 
							</div>

						</div>
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span>
							</div>

						</div>
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> 
							</div>

						</div>
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> <span>ㅉㅉㅉ</span>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="choose">
				<div class="list_box">
					<div class="title">
						Furniture
						<button type="button" class="no3 updown">Open</button>
						<!-- <button class="delete" href="#">
						<img src="resources/img/trash.png" class="trashimg trash3">
					</button> -->
					</div>
					<div class="title list3 lis">
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> <span>ㅉㅉㅉ</span>
							</div>

						</div>
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> <span>ㅉㅉㅉ</span>
							</div>

						</div>
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> <span>ㅉㅉㅉ</span>
							</div>

						</div>
						<div class="eeun-ae">
							<div class="jjim_img_list">
								<img src="resources/img/bora.png" class="jjim_img">
							</div>
							<div class="jjim_text_list">
								<span>제목</span> <span>ㅉㅉㅉ</span>
							</div>

						</div>

					</div>
				</div>
				<!-- 	
		<div class="half jepum"><img src="resources/img/sam.jpg" class="half-img"><a href="wishlist_palette.do">팔레트</a></div>
		<div class="half palt"><img src="resources/img/inte1.png"class="half-img"><a href="wishlist_product.do">제품</a></div> -->
			</div>
		</div>

		<!-- 나의 활동 -->
		<div class="mylog">
			<p class="mini_title">My Page > 나의 활동</p>
			<div class="board" style="margin-top: 25px;">
				<span style="font-weight: bold; margin-left: 100px; font-size: 20px;">내가 작성한
					게시글 : ${count} 개</span>
			</div>
			<!-- <div class="comment">
				<span style="font-weight: bold; margin-left: 100px;">내가 작성한
					댓글 : __ 개</span>
			</div>
 -->
			<div class="mylogtb" style="margin-top: 20px; margin-left: 50px;">
				<table id="log"
					style="width: 1300px; height: 450px; border: 2px solid #d1d1d1; margin: auto;">
					<tr class="tr1" style="text-align: center;">
						<th></th>
						<th>NO.</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
					<tr class="tr2">
						<td><div class="num" >
								<input id="num_check" type="checkbox">
							</div>
						<td>1</td>
						<td>우리집 예쁘지~~~~~~~~</td>
						<td>22.04.20</td>
						<td>16</td>
					</tr>
					<tr class="tr2">
						<td><div class="num">
								<input id="num_check" type="checkbox">
							</div>
						<td>2</td>
						<td>초록초록</td>
						<td>22.04.20</td>
						<td>37</td>
					</tr>
					<tr class="tr2" >
						<td><div class="num">
								<input id="num_check" type="checkbox">
							</div>
						<td>3</td>
						<td>우리집 구경하쇼</td>
						<td>22.04.20</td>
						<td>3</td>
					</tr>
				</table>
				<div class="box bg-1">
							<p>
								<button class="button button--wapasha button--round-s"
									type="submit" style="text-align: center; width: 80px; height: 50px;  margin-top: 20px;">선택 삭제</button>
							</p>
						</div>
			</div>

		</div>

	</div>

	<script>
		$(document).ready(function() {
			$('.recent').show();
			$('.update').hide();
			$('.mylog').hide();
		})
		$('.updateBtn').click(function() {
			$('.update').show();
			$('.recent').hide();
			$('.mylog').hide();

		})
		$('.recentBtn').click(function() {
			$('.recent').show();
			$('.update').hide();
			$('.mylog').hide();
		})
		$('.logBtn').click(function() {
			$('.mylog').show();
			$('.recent').hide();
			$('.update').hide();
		})

		// 최근 조회
		$(document).ready(function() {
			$('.list1, .list2, .list3').hide();
		})
		/* 1번버튼 */
		$('.no1').click(function() {
			if ($('.no1').text() == 'Open') {
				$('.no1').text('Close');
				$('.list1').slideDown(500);
				if ($('.no2').text() == "Close") {
					$('.no2').text('Open');
					$('.list2').slideUp(500);
				}
				if ($('.no3').text() == 'Close') {
					$('.no3').text('Open');
					$('.list3').slideUp(500);
				}
			} else if ($('.no1').text() == 'Close') {
				$('.no1').text('Open');
				$('.list1').slideUp(500);
			}
		})
		/* 2번버튼 */
		$('.no2').click(function() {
			if ($('.no2').text() == 'Open') {
				$('.no2').text('Close');
				$('.list2').slideDown(500);
				if ($('.no1').text() == 'Close') {
					$('.no1').text('Open');
					$('.list1').slideUp(500);
				}
				if ($('.no3').text() == 'Close') {
					$('.no3').text('Open');
					$('.list3').slideUp(500);
				}
			} else if ($('.no2').text() == 'Close') {
				$('.no2').text('Open');
				$('.list2').slideUp(500);
			}
		})
		/*3번버튼  */
		$('.no3').click(function() {
			if ($('.no3').text() == 'Open') {
				$('.no3').text('Close');
				$('.list3').slideDown(500);
				if ($('.no2').text() == 'Close') {
					$('.no2').text('Open');
					$('.list2').slideUp(500);
				}
				if ($('.no1').text() == 'Close') {
					$('.no1').text('Open');
					$('.list1').slideUp(500);
				}
			} else if ($('.no3').text() == 'Close') {
				$('.no3').text('Open');
				$('.list3').slideUp(500);
			}

		})

		// 비밀번호 일치 확인
		$("#pw, #checkpw").on("change", function() {
			var password = $('#pw').val();
			var passwordcheck = $('#checkpw').val();
			if (password != passwordcheck) {
				$('#pwCheck').text('비밀번호가 불일치합니다.')
				$('#pwCheck').css('color', '#ef8183');

			} else {
				$('#pwCheck').text('비밀번호가 일치합니다.')
				$('#pwCheck').css('color', '#6999e5');

			}
		});

		// 닉네임 중복체크
		$(nick).keyup(function() {

			var nick = $('#nick').val();

			if (nick == "") {
				console(nick);
			} else {
				$.ajax({

					url : "nickCheck.do",
					type : "POST",
					dataType : "JSON",
					data : {
						"nick" : nick
					},
					success : resultJson2,
					error : function(e) {
						console.log(e);
					}

				});
			}

		});

		function resultJson2(data) {
			// 이미 있는 id 회원 정보가 넘어오면 resultIdCheck 태그 안에
			// 이미 존재하는 아이디 입니다 글자를
			// 아니라면 사용 가능한 아이디 입니다 글자를 넣어주세요
			if (data.m_nick == undefined) {
				// 사용 가능
				$('#nickCheck').html('사용 가능한 닉네임 입니다.');
				$('#nickCheck').css('color', '#6999e5');
				console.log(data.m_nick)
			} else {
				// 사용 불가능
				$('#nickCheck').html('이미 등록된 닉네임 입니다.');
				$('#nickCheck').css('color', '#ef8183');
			}
		};

		// 회원 탈퇴
	</script>
</body>
</html>
