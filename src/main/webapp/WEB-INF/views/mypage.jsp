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
<link rel = "stylesheet" href="resources/css/wishlist.css" type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
	font-size: 38px;
	line-height: 87px;
	color: rgb(255, 255, 255);
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

/* 회원정보 수정 
input, #ftype {
	width: 320px;
	height: 30px;
	margin-top: 15px;
	margin-bottom: 5px;
	margin-left: 15px;
	border: 1px solid #d1d1d1;
	border-radius: 5%;
}  */
/* .input_gender {
	width: 15px;
	height: 15px;
	margin-top: 30px;
	margin-bottom: 15px;
	margin-left: 7px;
}  */
td.join_title {
	font-weight: bold;
}

.join_input2 {
	width: 320px;
	height: 30px;
	margin-top: 15px;
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
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="main2">
		<div id="commonMypage">
			<section class="common-mypage__sc-5trtbg-0 kXGNQj">
				<h1 class="common-mypage__sc-5trtbg-1 cOPbLJ">
					<a href="https://store.musinsa.com/app/mypage"
						style="color: white; margin-top: -15px; margin-left: 50px;">My
						Page</a>
				</h1>
				<!-- <div class="common-mypage__sc-5trtbg-2 dYNmgC">
					<a href="https://store.musinsa.com/app/cart"style="color: white;">장바구니<span
						data-system="CCommonBadge"
						class="common-mypage__sc-dlv48s-0 humJtF">6</span></a><a
						href="https://store.musinsa.com/app/cs"style="color: white;">고객센터</a><a
						href="https://www.musinsa.com/auth/logout"style="color: white;">로그아웃</a>
				</div> -->
				<div class="common-mypage__sc-5trtbg-3 JsGLX">
					<div class="common-mypage__sc-wme82i-0 cXbinu"></div>
					<div class="common-mypage__sc-1loaj4c-0 dZrJws">
						<div class="common-mypage__sc-1loaj4c-1 ebnvat">
							<strong>닉네임</strong><a
								href="https://www.musinsa.com/member/mypage">회원정보 수정</a>
						</div>
						<div class="common-mypage__sc-1loaj4c-2 xMHPc">
							<!-- <em>LV.3 멤버</em> -->
							<span>가입일 : 2017.05.17</span>
						</div>
						<!-- <p class="common-mypage__sc-1loaj4c-3 dwgQoo">
							김*정님 다음 등급인 브론즈까지 22,401점 남았습니다.<a
								href="https://www.musinsa.com/member/benefit">등급혜택 &gt;</a>
						</p> -->
					</div>
					<div class="common-mypage__sc-1m1vyak-0 fJZyji">
						<a href="https://www.musinsa.com/billing/point"><svg
								width="38" height="38" viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M12.6667 15.0667L16.4667 23.8555L19.0001 17.2639L21.5334 23.8555L25.3334 15.0667"
									stroke="white"></path>
								<path d="M11.3999 18.8333H26.5999" stroke="white"></path>
								<path
									d="M5.06665 19.9843C5.65768 27.0734 11.6594 32.6444 18.9761 32.6444C26.6845 32.6444 32.9333 26.461 32.9333 18.8333C32.9333 11.2057 26.6845 5.02222 18.9761 5.02222C11.6594 5.02222 5.65768 10.5932 5.06665 17.6824"
									stroke="white"></path></svg><em>최근 조회 &gt;</em> <!-- <strong>3,584</strong> --></a><a
							href="wishlist.do"><svg width="38" height="38"
								viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M16.7834 25.7389L16.7834 13.8111H20.2369C21.8274 13.8111 23.1168 15.1005 23.1168 16.691V16.691C23.1168 18.2815 21.8274 19.5708 20.2369 19.5708H16.7834"
									stroke="white"></path>
								<path
									d="M5.06665 19.9843C5.65768 27.0734 11.6594 32.6444 18.9761 32.6444C26.6845 32.6444 32.9333 26.461 32.9333 18.8333C32.9333 11.2057 26.6845 5.02222 18.9761 5.02222C11.6594 5.02222 5.65768 10.5932 5.06665 17.6824"
									stroke="white"></path></svg><em>위시리스트 &gt;</em> <!-- <strong>2,800</strong> --></a><a
							href="whishlist.do"><svg width="38" height="38"
								viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M5.06665 28.8778H4.56665V29.3778H5.06665V28.8778ZM32.9333 28.8778V29.3778H33.4333V28.8778H32.9333ZM32.9333 21.3444H33.4333V20.8444H32.9333V21.3444ZM32.9333 16.3222V16.8222H33.4333V16.3222H32.9333ZM32.9333 8.78888L33.4333 8.78888V8.28888H32.9333V8.78888ZM5.06665 8.78888V8.28888H4.56665V8.78888H5.06665ZM5.06665 16.3222H4.56665V16.8222H5.06665V16.3222ZM5.06665 21.3444V20.8444H4.56665V21.3444H5.06665ZM25.3333 28.3778H5.06665V29.3778H25.3333V28.3778ZM32.9333 28.3778H25.3333V29.3778H32.9333V28.3778ZM32.4333 21.3444L32.4333 28.8778H33.4333L33.4333 21.3444H32.4333ZM32.9333 20.8444C31.8062 20.8444 30.9 19.9399 30.9 18.8333H29.9C29.9 20.5005 31.2622 21.8444 32.9333 21.8444V20.8444ZM30.9 18.8333C30.9 17.7268 31.8062 16.8222 32.9333 16.8222V15.8222C31.2622 15.8222 29.9 17.1662 29.9 18.8333H30.9ZM32.4333 8.78888L32.4333 16.3222H33.4333L33.4333 8.78888L32.4333 8.78888ZM25.3333 9.28888H32.9333V8.28888H25.3333V9.28888ZM5.06665 9.28888H25.3333V8.28888H5.06665V9.28888ZM5.56665 16.3222V8.78888H4.56665V16.3222H5.56665ZM8.09998 18.8333C8.09998 17.1662 6.73775 15.8222 5.06665 15.8222V16.8222C6.19379 16.8222 7.09998 17.7268 7.09998 18.8333H8.09998ZM5.06665 21.8444C6.73775 21.8444 8.09998 20.5005 8.09998 18.8333H7.09998C7.09998 19.9399 6.19379 20.8444 5.06665 20.8444V21.8444ZM5.56665 28.8778V21.3444H4.56665V28.8778H5.56665ZM24.8333 8.78888V11.3H25.8333V8.78888H24.8333ZM25.8333 28.8778V26.3667H24.8333V28.8778H25.8333Z"
									fill="white"></path>
								<path
									d="M19.6333 15.0667H17.7C15.6197 15.0667 13.9333 16.753 13.9333 18.8333V18.8333C13.9333 20.9136 15.6197 22.6 17.7 22.6H19.6333"
									stroke="white"></path>
								<path d="M25.3333 13.8111L25.3333 17.5778" stroke="white"></path>
								<path d="M25.3333 20.0889L25.3333 23.8555" stroke="white"></path></svg><em>나의
								활동 &gt;</em> <!-- <strong>131</strong> --></a><a
							href="https://store.musinsa.com/app/mypage/write_review"><svg
								width="38" height="38" viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M31.6666 31.3889H17.7333M6.33325 24.4617L24.6781 6.27777L31.6666 13.205L13.3218 31.3889H6.33325V24.4617Z"
									stroke="white"></path></svg><em>회원정보 수정 &gt;</em> <!-- <strong>3</strong> --></a>
					</div>
				</div>
			</section>
		</div>
		
<!-- 회원정보 수정 -->		
		<div class="update">
			<form action="joinInsert.do" method="post">
				<div class="main3">
					<p class="mini_title">My Page > 회원정보 수정</p>
					<div class="join_wrapper" style="margin: 40px auto;">
						<!-- <div style="text-align: center;">
						<img src="resources/img/ev_icon.png" width="150" height="auto"
							alt="demo" id="btn_goMain" />
					</div>
					<hr style="opacity: 0.5;"> -->
						<form>
							<table style="margin: auto;">
								<tr>
									<td class="join_title">아이디</td>
									<td class="join_input"><input type="text"
										name="user_email" id="user_email" required
										style="width: 165px; height: 30px; margin-left: 15px; border: 1px solid #d1d1d1"
										placeholder="이메일 주소"><span id="middle">@</span><input
										type="text" id="email_address" name=email_address
										list="user_email_address"
										style="width: 140px; height: 30px; border: 1px solid #d1d1d1; border-radius: 5%;">
										<datalist id="user_email_address">
											<option value="naver.com">naver.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="daum.net">daum.net</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="icloud.com">icloud.com</option>
											<option value="직접입력">직접입력</option>
										</datalist> <input type="hidden" id="m_email" name="m_email" value=""
										oninput="checkId()"> <!-- <button class="btn btn-info btn-sm" id="idCheck" type="button">중복체크</button> -->
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
										height="120px" placeholder="이름" /></td>
								</tr>
								<tr>
									<td class="join_title">닉네임</td>
									<td class="join_input"><input type="text" name="m_nick"
										id="nick" class="join_input2" size="20" maxlength="30"
										height="120px" placeholder="닉네임" /></td>
								</tr>
								<tr>
									<td></td>
									<td><p id="nickCheck"
											style="text-align: left; margin-left: 15px; margin-top: 0px; margin-bottom: 5px;"></p></td>
								</tr>
								<tr>
									<td class="join_title">생년월일</td>
									<td class="join_input"><input type="date"
										name="m_birthdate" id="birthdate" class="join_input2"
										size="20" maxlength="30" height="120px" placeholder="" /></td>
								</tr>
								<tr>
									<td class="join_title">성별</td>
									<td class="join_input" colspan="2"><input type="radio"
										name="m_gender" value="남" class="gender"
										style="margin-top: 15px; margin-left: 20px;">남자<input
										type="radio" name="m_gender" value="여" class="gender"
										style="margin-top: 15px; margin-left: 20px;">여자<input
										type="radio" name="m_gender" value="x" class="gender"
										style="margin-top: 15px; margin-left: 20px;">선택 안함</td>
								</tr>
								<tr>
									<td class="join_title">주소</td>
									<td class="join_input"><input type="text" name="m_addr"
										id="addr" class="join_input2" size="20" maxlength="30"
										height="120px" placeholder="주소" /></td>
								</tr>
								<tr>
									<td class="join_title">주거 형태</td>
									<td class="join_input"><select id="ftype" name="m_ftype"
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
										id="size" class="join_input2" size="20" maxlength="30"
										height="120px" placeholder="ex) 1인" /></td>
								</tr>
							</table>
						</form>

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
		<div class="title">Interior<button type="button" class="no1 updown">Open</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash1"></button></div>
		<div class="title list1 lis">
		<%-- <fmt:formatNumber var = "page" value="${fn:length(p_list)}"/>
		<fmt:parseNumber var = "cnt" integerOnly="true" value="${((page)/10)+1 }"/> --%>
		<div class= "list-full">
		<c:forEach var="p_list" items="${ p_list}"  varStatus="i">
			<div class="inpalette"> 
			<div class="check"><input type="checkbox" name="delete_seq" value="${p_list.pl_seq}">
<%-- 			<input type="text" name="pl_seq" value="${p_list.pl_seq}"> --%>
					
			
				<div class= "point">
		
					<div class="palette cl1" style="background-color:${p_list.pl_c1};">
				
					</div>
					<div class ="palette-name">${p_list.pl_seq}</div>
				</div>
				<div class= "point">
		
					<div class="palette cl2" style="background-color: ${p_list.pl_c2}">
	

					</div>
					<div class ="palette-name">${cnt }</div>
				</div>
				<div class= "point">
		
					<div class="palette cl3" style="background-color: ${p_list.pl_c3}">
				
					</div>
					<div class ="palette-name"> 색상</div>
				</div>
				<div class= "point">
		
					<div class="palette cl4" style="background-color:${p_list.pl_c4}">
					
					</div>
					<div class ="palette-name"> 색상</div>
				</div>
				<div class= "point">
		
					<div class="palette cl5" style="background-color: ${p_list.pl_c5}">
					
					</div>
					<div class ="palette-name"> 색상</div>
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
		<div class="list_box">
		<div class="title">Video<button type="button" class="no2 updown">Open</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash2"></button></div>
		<div class="title list2 lis">
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
		</div>
		</div>
		<div class="list_box">
		<div class="title">Furniture<button  type="button" class="no3 updown">Open</button>
		<button class="delete" href="#"><img src="resources/img/trash.png" class="trashimg trash3"></button></div>
		<div class="title list3 lis">
			<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
			
		</div>
		</div>
	<!-- 	
		<div class="half jepum"><img src="resources/img/sam.jpg" class="half-img"><a href="wishlist_palette.do">팔레트</a></div>
		<div class="half palt"><img src="resources/img/inte1.png"class="half-img"><a href="wishlist_product.do">제품</a></div> -->
		</div>
	</div>
		
		</div>
		
	</div>

	<script>
		$(document).ready(function() {
			$('.m_info11').show();
			$('.m_active11').hide();
			$('.ekbdbra0').show();
		})
		$('.m_info').click(function() {
			$('.m_info11').show();
			$('.m_active11').hide();
			$('.ekbdbra0').show();
		})
		$('.m_active').click(function() {
			$('.m_info11').hide();
			$('.m_active11').show();
			$('.ekbdbra0').hide();
		})
		
		// 최근 조회
		$(document).ready(function(){
		$('.list1, .list2, .list3').hide();
	})
	/* 1번버튼 */
		$('.no1').click(function() {
		if($('.no1').text()=='Open'){
			$('.no1').text('Close');
			$('.list1').slideDown(500);
			if($('.no2').text()=="Close"){
				$('.no2').text('Open');
				$('.list2').slideUp(500);
			}
			if($('.no3').text()=='Close'){
				$('.no3').text('Open');
				$('.list3').slideUp(500);
			}
		}
		else if($('.no1').text()=='Close'){
			$('.no1').text('Open');
			$('.list1').slideUp(500);
		}
		})
		/* 2번버튼 */
		$('.no2').click(function() {
		if($('.no2').text()=='Open'){
			$('.no2').text('Close');
			$('.list2').slideDown(500);
			if($('.no1').text()=='Close'){
				$('.no1').text('Open');
				$('.list1').slideUp(500);
			}
			if($('.no3').text()=='Close'){
				$('.no3').text('Open');
				$('.list3').slideUp(500);
			}
		}
		else if($('.no2').text()=='Close'){
			$('.no2').text('Open');
			$('.list2').slideUp(500);
		}
		})
	/*3번버튼  */
	$('.no3').click(function() {
		if($('.no3').text()=='Open'){
			$('.no3').text('Close');
			$('.list3').slideDown(500);
			if($('.no2').text()=='Close'){
				$('.no2').text('Open');
				$('.list2').slideUp(500);
			}
			if($('.no1').text()=='Close'){
				$('.no1').text('Open');
				$('.list1').slideUp(500);
			}
		}
		else if($('.no3').text()=='Close'){
			$('.no3').text('Open');
			$('.list3').slideUp(500);
		}
			
	})
		
	</script>
</body>
</html>
