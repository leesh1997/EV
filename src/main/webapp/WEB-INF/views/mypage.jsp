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
.kXGNQj {
    position: relative;
    padding: 1px 0px 44px;
    margin: 0px auto;
    color: rgb(255, 255, 255);
    background-color: black;
}
.cOPbLJ {
    padding: 20px 0px 24px;
}
h1{
font-size: inherit;
}
.cOPbLJ > a {
    display: inline-block;
    font-family: Musinsa, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
    font-size: 40px;
    font-weight: bold;
    margin-left:30px;
    color: rgb(255, 255, 255);
    line-height: 52px;
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
}
.cXbinu {
    float: left;
    width: 160px;
    height: 160px;
    background: url(resources/img/user2.png) 50% 50% / cover no-repeat;
    border-radius: 100%;
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
    padding-left: 50px;
    box-sizing: border-box;
}
.dYNmgC > a {
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
    padding-left: 40px;
}
.ebnvat {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    vertical-align: baseline;
    line-height: 60px;
}

.ebnvat > strong {
    display: inline-block;
    font-size: 45px;
    line-height: 87px;
    color: rgb(255, 255, 255);
}
.ebnvat > a {
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
.xMHPc > em {
    font-family: Musinsa, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
    font-size: 24px;
    line-height: 36px;
    color: rgb(255, 255, 255);
}
.xMHPc > span {
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
.dwgQoo > a {
    display: inline-block;
    margin-left: 8px;
    font-size: 12px;
    line-height: 18px;
    color: rgb(145, 145, 145);
}
.fJZyji {
    display: flex;
    float: left;
    padding: 40px 0px 0px 50px;
}
.fJZyji > a {
    display: flex;
    flex-direction: column;
    width: 180px;
    margin-right: 10px;
}
* {
    margin: 0;
    padding: 0;
}
.fJZyji > a > em {
    display: block;
    margin: 8px 0px;
    font-size: 14px;
    line-height: 21px;
}
em{
font-style: normal;
color: white;
}
.fJZyji > a > strong {
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

</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="main2">

		<div id="commonMypage">
			<section class="common-mypage__sc-5trtbg-0 kXGNQj">
				<h1 class="common-mypage__sc-5trtbg-1 cOPbLJ">
					<a href="https://store.musinsa.com/app/mypage" style="color: white;">My Page</a>
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
							<em>LV.3 멤버</em><span>가입일 : 2017.05.17</span>
						</div>
						<p class="common-mypage__sc-1loaj4c-3 dwgQoo">
							김*정님 다음 등급인 브론즈까지 22,401점 남았습니다.<a
								href="https://www.musinsa.com/member/benefit">등급혜택 &gt;</a>
						</p>
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
									stroke="white"></path></svg><em>적립금 &gt;</em><strong>3,584</strong></a><a
							href="https://www.musinsa.com/member/point"><svg width="38"
								height="38" viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M16.7834 25.7389L16.7834 13.8111H20.2369C21.8274 13.8111 23.1168 15.1005 23.1168 16.691V16.691C23.1168 18.2815 21.8274 19.5708 20.2369 19.5708H16.7834"
									stroke="white"></path>
								<path
									d="M5.06665 19.9843C5.65768 27.0734 11.6594 32.6444 18.9761 32.6444C26.6845 32.6444 32.9333 26.461 32.9333 18.8333C32.9333 11.2057 26.6845 5.02222 18.9761 5.02222C11.6594 5.02222 5.65768 10.5932 5.06665 17.6824"
									stroke="white"></path></svg><em>포인트 &gt;</em><strong>2,800</strong></a><a
							href="https://store.musinsa.com/app/contents/coupon_online/my"><svg
								width="38" height="38" viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M5.06665 28.8778H4.56665V29.3778H5.06665V28.8778ZM32.9333 28.8778V29.3778H33.4333V28.8778H32.9333ZM32.9333 21.3444H33.4333V20.8444H32.9333V21.3444ZM32.9333 16.3222V16.8222H33.4333V16.3222H32.9333ZM32.9333 8.78888L33.4333 8.78888V8.28888H32.9333V8.78888ZM5.06665 8.78888V8.28888H4.56665V8.78888H5.06665ZM5.06665 16.3222H4.56665V16.8222H5.06665V16.3222ZM5.06665 21.3444V20.8444H4.56665V21.3444H5.06665ZM25.3333 28.3778H5.06665V29.3778H25.3333V28.3778ZM32.9333 28.3778H25.3333V29.3778H32.9333V28.3778ZM32.4333 21.3444L32.4333 28.8778H33.4333L33.4333 21.3444H32.4333ZM32.9333 20.8444C31.8062 20.8444 30.9 19.9399 30.9 18.8333H29.9C29.9 20.5005 31.2622 21.8444 32.9333 21.8444V20.8444ZM30.9 18.8333C30.9 17.7268 31.8062 16.8222 32.9333 16.8222V15.8222C31.2622 15.8222 29.9 17.1662 29.9 18.8333H30.9ZM32.4333 8.78888L32.4333 16.3222H33.4333L33.4333 8.78888L32.4333 8.78888ZM25.3333 9.28888H32.9333V8.28888H25.3333V9.28888ZM5.06665 9.28888H25.3333V8.28888H5.06665V9.28888ZM5.56665 16.3222V8.78888H4.56665V16.3222H5.56665ZM8.09998 18.8333C8.09998 17.1662 6.73775 15.8222 5.06665 15.8222V16.8222C6.19379 16.8222 7.09998 17.7268 7.09998 18.8333H8.09998ZM5.06665 21.8444C6.73775 21.8444 8.09998 20.5005 8.09998 18.8333H7.09998C7.09998 19.9399 6.19379 20.8444 5.06665 20.8444V21.8444ZM5.56665 28.8778V21.3444H4.56665V28.8778H5.56665ZM24.8333 8.78888V11.3H25.8333V8.78888H24.8333ZM25.8333 28.8778V26.3667H24.8333V28.8778H25.8333Z"
									fill="white"></path>
								<path
									d="M19.6333 15.0667H17.7C15.6197 15.0667 13.9333 16.753 13.9333 18.8333V18.8333C13.9333 20.9136 15.6197 22.6 17.7 22.6H19.6333"
									stroke="white"></path>
								<path d="M25.3333 13.8111L25.3333 17.5778" stroke="white"></path>
								<path d="M25.3333 20.0889L25.3333 23.8555" stroke="white"></path></svg><em>쿠폰
								&gt;</em><strong>131</strong></a><a
							href="https://store.musinsa.com/app/mypage/write_review"><svg
								width="38" height="38" viewBox="0 0 38 38" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<path
									d="M31.6666 31.3889H17.7333M6.33325 24.4617L24.6781 6.27777L31.6666 13.205L13.3218 31.3889H6.33325V24.4617Z"
									stroke="white"></path></svg><em>후기작성 &gt;</em><strong>3</strong></a>
					</div>
				</div>
			</section>
			
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
	</script>
</body>
</html>
