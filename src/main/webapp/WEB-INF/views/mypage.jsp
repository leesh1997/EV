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
.css-18dsw15 e1ivswjr4 {
	color: #424242;
	line-height: 1;
	font-family: OhouseSans, "Noto Sans KR", "Apple SD Gothic Neo", "맑은 고딕",
		"Malgun Gothic", sans-serif;
	-webkit-font-smoothing: antialiased;
	letter-spacing: -0.4px;
	font-size: 15px;
	-webkit-box-direction: normal;
	-webkit-tap-highlight-color: transparent;
	margin: 0;
	-webkit-box-flex: 0;
	flex: 0 0 auto;
	position: relative;
	padding: 0px 0px 40px;
}

.myhome-nav {
	position: relative;
	width: 100%;
	margin: 0 auto;
}

.page-navigation__item {
	display: inline-block;
}

.page-navigation__item>a.active, .page-navigation__item>a:not(.active):hover
	{
	color: #35c5f0;
}
.page-navigation__item>a {
    display: block;
    padding: 0 10px;
    font-weight: 700;
    position: relative;
    height: 60px;
    line-height: 60px;
    transition: color .15s ease;
}
.myhome-nav__owner .page-navigation__item:not(:first-child) {
    margin-left: 30px;
}
.page-navigation {
    border-bottom: 1px solid #ededed;
    width: 100%;
    overflow: hidden;
}
.page-navigation>ul {
    text-align: center;
    white-space: nowrap;
}
ol, ul {
    list-style: none;
}

 @media (min-width: 768px) 
.css-itjaqv {
    padding: 30px 25px 18px;
    border-radius: 4px;
    border: 1px solid rgb(218, 220, 224);
    box-shadow: rgb(63 71 77 / 6%) 0px 2px 4px 0px;
}
.css-itjaqv {
    position: relative;
    padding: 0px;
}
 @media (min-width: 768px) 
.css-1xbefvf {
    top: 18px;
    right: 12px;
}
.css-1xbefvf {
    position: absolute;
    top: -14px;
    right: -6px;
    display: flex;
    align-items: flex-end;
    z-index: 1;
}
.drop-down {
    position: relative;
    display: inline-block;
}
.css-rmsnvz {
    display: inline-block;
    margin: 0px;
    padding: 0px;
    border: none;
    background: none;
    font-style: inherit;
    font-variant: inherit;
    font-weight: inherit;
    font-stretch: inherit;
    line-height: inherit;
    font-family: inherit;
    color: rgb(66, 66, 66);
    font-size: 24px;
}
 @media (min-width: 1024px) 
.css-hdhsoq {
    padding: 0px;
}
 @media (min-width: 768px) 
.css-hdhsoq {
    min-height: 120px;
    padding: 14px 0px 0px 140px;
}
.css-hdhsoq {
    position: relative;
    min-height: 84px;
    box-sizing: border-box;
    padding-left: 104px;
    margin: 0px 0px 20px;
}
 @media (min-width: 1024px) 
.css-1uebeg0 {
    position: relative;
    margin: 0px auto 24px;
}
 @media (min-width: 768px) 
.css-1uebeg0 {
    width: 120px;
    height: 120px;
}
.css-1uebeg0 {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 84px;
    height: 84px;
    margin: 0px 20px 0px 0px;
    border-radius: 100%;
    background-color: rgb(237, 237, 237);
    overflow: hidden;
}
.css-1cqverl {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    transform: translate(-50%, -50%);
}
fieldset, img {
    border: 0;
}
 @media (min-width: 1024px) 
.css-oycm3d {
    text-align: center;
}
.myhome-nav {
    position: relative;
    width: 100%;
    margin: 0 auto;
}
 @media (min-width: 768px) 
.myhome-nav__owner {
    font-size: 18px;
}
.myhome-nav__owner {
    overflow: visible;
    font-size: 16px;
}
.page-navigation {
    border-bottom: 1px solid #ededed;
    width: 100%;
    overflow: hidden;
}
.page-navigation>ul {
    text-align: center;
    white-space: nowrap;
}
.page-navigation__item {
    display: inline-block;
    user-select: none;
}
.myhome-nav__owner .page-navigation__item:not(:first-child) {
    margin-left: 30px;
}
[role=button], a, button, input[type=button], input[type=reset], input[type=submit] {
    cursor: pointer;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
}
a {
    color: inherit;
    text-decoration: none;
}
 @media (min-width: 1256px) 
.css-1x6h9tu {
    padding: 0px 60px;
}
 @media (min-width: 1256px) 
.css-1mux1hm {
    margin: 0px -10px;
}
.css-1mux1hm {
    display: flex;
    flex-wrap: wrap;
    box-sizing: border-box;
}
 @media (min-width: 1024px) 
.css-i5en0t {
    width: 25%;
}
 @media (min-width: 1256px) 
.css-i5en0t {
    padding-left: 10px;
    padding-right: 10px;
}
.css-i5en0t {
    box-sizing: border-box;
    width: 100%;
    position: relative;
    padding-top: 30px;
}

 @media (min-width: 1024px) 
.css-1049nre {
    padding: 24px 0px 6px;
}
 @media (min-width: 768px) 
.css-1049nre {
    border-top: 1px solid rgb(234, 235, 239);
    padding: 22px 12px 0px;
}
 @media (min-width: 1024px) 
.css-n5l119 {
    line-height: 1.15;
}
 @media (min-width: 768px) 
.css-n5l119 {
    margin: 0px 0px 10px;
    font-size: 26px;
}
.css-n5l119 {
    margin: 0px 0px 3px;
    font-weight: bold;
    font-size: 20px;
    line-height: 1.2;
    color: rgb(41, 41, 41);
    overflow-wrap: break-word;
    word-break: break-all;
}
 @media (min-width: 1024px) 
.css-1uy49c8 {
    margin: 0px 0px 13px;
}
.css-1uy49c8 {
    margin: 0px 0px 7px;
    display: block;
    font-size: 13px;
    font-weight: 400;
    line-height: 19px;
    color: rgb(130, 140, 148);
}
.css-7haicw {
    display: inline-block;
    margin-right: 5px;
}
.css-7i5a5g {
    display: inline-block;
    margin-right: 10px;
    font-weight: bold;
    color: rgb(82, 91, 97);
}
.css-d2ibel {
    opacity: 1;
    transition: opacity 0.1s ease 0s;
}
.css-h9lcdg.css-h9lcdg {
    padding-left: 16px;
    padding-right: 16px;
    margin-right: 6px;
    font-weight: normal;
    font-size: 12px;
    color: rgb(41, 41, 41);
}
._1XHs9 {
    padding: 5px 7px 6px;
    font-size: 15px;
    line-height: 19px;
    }
     ._1zLQC {
    background-color: #fff;
    border-color: #dbdbdb;
    color: #757575;
}   
 @media (min-width: 1024px) 
.css-gb61jx {
    display: none;
}
.css-gb61jx {
/*     display: inline-block;
 */    margin-right: 6px;
    font-size: 12px;
    line-height: 19px;
    padding: 6px 16px 7px;
    border-radius: 4px;
    background-color: rgb(239, 251, 255);
    color: rgb(63, 71, 77);
}
.css-gb61jx > b {
    margin-left: 2px;
    color: rgb(53, 197, 240);
}
.css-134c4us {
    display: flex;
    color: rgb(41, 41, 41);
}
 @media (min-width: 1024px) 
.css-1p9dybm {
    padding: 0px;
}
 @media (min-width: 768px) 
.css-1p9dybm {
    padding: 0px 16px;
}
.css-1p9dybm {
    flex: 1 0 0px;
    display: block;
    min-width: 0px;
    box-sizing: border-box;
    text-align: center;
    padding: 18px 16px 14px;
    transition: opacity 0.1s ease 0s;
}
 @media (min-width: 1024px) 
.css-1sravj {
    display: block;
}
.css-1sravj {
    display: none;
    margin: 14px 0px 0px;
    width: 100%;
    box-sizing: border-box;
    padding: 15px 0px;
    font-size: 14px;
    line-height: 20px;
    border-radius: 4px;
    background-color: rgb(239, 251, 255);
    color: rgb(63, 71, 77);
    text-align: center;
    transition: background-color 0.1s ease 0s;
}
 @media (min-width: 1024px) 
.css-1dm5gv7 {
    width: 8.33333%;
}
@media (min-width: 1256px) 
.css-1dm5gv7 {
    padding-left: 10px;
    padding-right: 10px;
}
.css-vb69r7 {
display: none;
    margin: 0px -10px 20px;
    border-bottom: 1px solid rgb(237, 237, 237);
}
 @media (min-width: 1024px) 
.css-1ltj86z {
    width: 66.6667%;
}
 @media (min-width: 1256px) 
.css-1ltj86z {
    padding-left: 10px;
    padding-right: 10px;
}
.css-1ecfa5v {
    max-width: 700px;
    margin: 0px auto;
    padding: 50px 0px 0px;
    color: rgb(41, 41, 41);
}
.css-j2mjq4 {
    margin: 0px 0px 60px;
}
.css-rd2t8e {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin: 0px 0px 20px;
}
.css-dyhp2o {
    color: rgb(0, 0, 0);
    font-weight: bold;
    font-size: 18px;
    line-height: 1;
}
.css-1vy2ypg {
    margin-left: 0.4ch;
    color: rgb(53, 197, 240);
}
.css-vxgh1s {
    margin: 0px -10px;
}
.css-f61xoy {
    margin: 0px;
    padding: 0px;
    background: none;
    font-style: inherit;
    font-variant: inherit;
    font-stretch: inherit;
    line-height: inherit;
    font-family: inherit;
    display: flex;
    width: 100%;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    height: 175px;
    border: 1px dashed rgb(219, 219, 219);
    color: rgb(117, 117, 117);
    font-size: 13px;
    font-weight: bold;
    transition: color 0.1s ease 0s;
}
.css-1n1rkai {
    margin: 0px 5px -2px 0px;
}
a * {
    border: none;
}
.css-rd2t8e {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    margin: 0px 0px 20px;
}
.css-dyhp2o {
    color: rgb(0, 0, 0);
    font-weight: bold;
    font-size: 18px;
    line-height: 1;
}
.css-1vy2ypg {
    margin-left: 0.4ch;
    color: rgb(53, 197, 240);
}
.css-1n1rkai {
    margin: 0px 5px -2px 0px;
}

.page-navigation__item>a.active:after {
    content: "";
    position: absolute;
    display: block;
    width: 100%;
    height: 4px;
    background: #35c5f0;
    left: 0;
    bottom: 0;
}
.main2{
position: relative;
z-index: 50;
margin-left: 100px;
}
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="main2">
		<div class="css-18dsw15 e1ivswjr4">
			<div class="myhome-nav myhome-nav--owner">
				<nav class="page-navigation myhome-nav__owner">
					<ul style="transform: translateX(0px);">
						<li class="page-navigation__item"><a class="active"
							href="/users/12467282" target="_self">프로필</a></li>
						<li class="page-navigation__item"><a class=""
							href="/user_shopping_pages/order_list" target="_self">나의 쇼핑</a></li>
						<li class="page-navigation__item"><a class=""
							href="/production_reviews/write" target="_self">나의 리뷰</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/edit" target="_self">설정</a></li>
					</ul>
				</nav>
				<nav class="page-navigation myhome-nav__contents">
					<ul style="transform: translateX(0px);">
						<li class="page-navigation__item"><a class="active"
							href="/users/12467282" target="_self">모두보기</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/card_collections" target="_self">사진</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/projects" target="_self">집들이</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/advices" target="_self">노하우</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/questions" target="_self">질문과답변</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/collections" target="_self">스크랩북</a></li>
						<li class="page-navigation__item"><a class=""
							href="/users/12467282/praises" target="_self">좋아요</a></li>
					</ul>
				</nav>
			</div>
			<div class="css-1x6h9tu ekbdbra0">
				<div class="css-1mux1hm el2z1iq0">
					<div class="css-i5en0t e1ivswjr3">
						<div class="sticky-container"
							style="position: sticky; top: 81px; transition: top 0.1s ease 0s;">
							<div class="sticky-child" style="position: relative;">
								<div class="css-0 e1ejty664">
									<div class="css-itjaqv e1ejty663">
										<div class="css-1xbefvf e1ejty662">
											<div class="drop-down css-0 e1ejty661">
												<button type="button" aria-pressed="false" aria-label="공유"
													class="css-rmsnvz e1ejty660">
													<svg width="24" height="24" viewBox="0 0 24 24"
														fill="currentColor" preserveAspectRatio="xMidYMid meet">
														<path
															d="M9.64 14.646a4.5 4.5 0 1 1 0-5.292l4.54-2.476a4.5 4.5 0 1 1 .63.795l-4.675 2.55c.235.545.365 1.146.365 1.777s-.13 1.232-.365 1.777l4.675 2.55a4.5 4.5 0 1 1-.63.795l-4.54-2.476zM18 8a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM6 15.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7zM18 23a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"></path></svg>
												</button>
											</div>
										</div>
										<div class="css-hdhsoq e18gdfbl4">
											<div class="css-1uebeg0 e18gdfbl3">
												<img class="css-1cqverl e18gdfbl2"
													src="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=144&amp;h=144&amp;c=c"
													srcset="https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=240&amp;h=240&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=320&amp;h=320&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/uploads/default_images/avatar.png?gif=1&amp;w=480&amp;h=480&amp;c=c 3x">
											</div>
											<div class="css-oycm3d e18gdfbl1">
												<div class="css-n5l119 etfm1it0">히힣22</div>
												<div class="css-oycm3d e1iro1t99">
													<dl class="css-1uy49c8 e1iro1t98">
														<dt class="css-7haicw e1iro1t97">팔로워</dt>
														<dd class="css-7i5a5g e1iro1t96">
															<a class="css-d2ibel e1iro1t95"
																href="/users/12467282/follower">0</a>
														</dd>
														<dt class="css-7haicw e1iro1t97">팔로잉</dt>
														<dd class="css-7i5a5g e1iro1t96">
															<a class="css-d2ibel e1iro1t95"
																href="/users/12467282/followee">0</a>
														</dd>
													</dl>
													<div class="css-0 e1iro1t94">
														<a class="_3Z6oR _1zLQC _1XHs9 css-h9lcdg e1iro1t93"
															href="/users/12467282/edit">설정</a><a
															class="css-gb61jx e1iro1t91"
															href="/invite_codes/recommend_code">친구 초대 <b>5,000P</b></a>
													</div>
												</div>
											</div>
										</div>
										<div class="css-1049nre epl9oik0">
											<div class="css-134c4us ekeuxnk0">
												<a class="css-1p9dybm e1q26atk3"
													href="/users/12467282/collections"><div
														class="css-zpotx6 e1q26atk2">
														<svg width="24" height="24" viewBox="0 0 24 24"
															fill="currentColor" preserveAspectRatio="xMidYMid meet">
															<path fill-rule="evenodd"
																transform="matrix(1 0 0 -1 0 23.033)"
																d="M12.943 6.342a2 2 0 0 1-1.886 0L3 2.032V20.5a.5.5 0 0 0 .5.5h17a.5.5 0 0 0 .5-.5V2.033l-8.057 4.309zm-.471-.882l8.056-4.31A1 1 0 0 1 22 2.034V20.5a1.5 1.5 0 0 1-1.5 1.5h-17A1.5 1.5 0 0 1 2 20.5V2.033a1 1 0 0 1 1.472-.882l8.056 4.31a1 1 0 0 0 .944 0z"></path></svg>
													</div>
													<div class="css-10ewlqi e1q26atk1">스크랩북</div>
													<div class="css-2rwq1u e1q26atk0">29</div></a><a
													class="css-1p9dybm e1q26atk3"
													href="/users/12467282/praises"><div
														class="css-zpotx6 e1q26atk2">
														<svg width="24" height="24" viewBox="0 0 24 24"
															preserveAspectRatio="xMidYMid meet">
															<path fill="currentColor"
																d="M22.971 7.638c-.548-5.17-7.119-7.135-10.57-2.488a.5.5 0 0 1-.802 0C8.148.503 1.577 2.469 1.029 7.625.642 12.451 3.897 17.183 12 21.436c8.104-4.252 11.36-8.984 10.972-13.798zm.996-.093c.428 5.319-3.137 10.446-11.738 14.899a.5.5 0 0 1-.46 0C3.169 17.99-.395 12.864.034 7.532.656 1.67 7.904-.683 12 4.052 16.096-.683 23.344 1.67 23.967 7.545z"></path></svg>
													</div>
													<div class="css-10ewlqi e1q26atk1">좋아요</div>
													<div class="css-2rwq1u e1q26atk0">0</div></a><a
													class="css-1p9dybm e1q26atk3"
													href="/user_shopping_pages/coupons"><div
														class="css-zpotx6 e1q26atk2">
														<svg width="24" height="24" viewBox="0 0 24 24"
															preserveAspectRatio="xMidYMid meet">
															<path fill="#424242" fill-rule="nonzero"
																d="M22.588 3H1.413C.633 3 0 3.638 0 4.426L0 9.53l.605-.088c.12-.017.243-.026.367-.026 1.413 0 2.558 1.157 2.558 2.584S2.385 14.584.972 14.584c-.124 0-.247-.009-.367-.026L0 14.47l.001 5.104C.001 20.362.633 21 1.413 21h21.175c.78 0 1.412-.638 1.412-1.426V4.426C24 3.638 23.368 3 22.588 3zM1.413 4.07h21.175c.195 0 .353.159.353.356v15.148c0 .197-.158.357-.353.357H1.413l-.071-.008c-.161-.033-.282-.176-.282-.349l-.002-3.923-.086.002c1.997 0 3.617-1.635 3.617-3.653l-.004-.182C4.493 9.945 3.006 8.443 1.152 8.35l-.094-.003.002-3.922c0-.197.158-.357.353-.357zm14.646 2.138c.293 0 .53.237.53.53v1.614c0 .292-.237.53-.53.53-.292 0-.53-.238-.53-.53V6.737c0-.292.238-.53.53-.53zm0 4.455c.293 0 .53.237.53.53v1.614c0 .293-.237.53-.53.53-.292 0-.53-.237-.53-.53v-1.614c0-.293.238-.53.53-.53zm0 4.456c.293 0 .53.237.53.53v1.614c0 .292-.237.53-.53.53-.292 0-.53-.238-.53-.53v-1.615c0-.292.238-.53.53-.53z"></path></svg>
													</div>
													<div class="css-10ewlqi e1q26atk1">내 쿠폰</div>
													<div class="css-2rwq1u e1q26atk0">0</div></a>
											</div>
										</div>
									</div>
									<a class="css-1sravj e1s6kf711"
										href="/invite_codes/recommend_code">친구 초대하고 <b>5,000P</b>
										받기<svg width="1em" height="1em" viewBox="0 0 24 24"
											preserveAspectRatio="xMidYMid meet"
											class="css-1pjipdo e1s6kf710">
											<path fill="currentColor" fill-rule="nonzero"
												d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></a>
								</div>
							</div>
						</div>
					</div>
					<div class="css-1dm5gv7 e15wafbq0">
						<div class="css-vb69r7 e1ivswjr2"></div>
					</div>
					<div class="css-1ltj86z e15wafbq0">
						<div class="css-1ecfa5v emjsage0">
							<div>
								<section class="css-j2mjq4 e17n0xi4">
									<div class="css-rd2t8e e17n0xi3">
										<h1 class="css-dyhp2o e17n0xi2">
											사진<span class="css-1vy2ypg e17n0xi0">0</span>
										</h1>
										<div class="css-vxgh1s e17n0xi1"></div>
									</div>
									<a class="css-f61xoy e1s15hxd1"
										href="/contents/card_collections/new"><svg width="16"
											height="16" viewBox="0 0 16 16"
											preserveAspectRatio="xMidYMid meet"
											class="css-1n1rkai e1s15hxd0">
											<path fill="currentColor" d="M9 2v5h5v2H9v5H7V9H2V7h5V2h2z"></path></svg>첫
										번째 사진을 올려보세요</a>
								</section>
								<section class="css-j2mjq4 e17n0xi4">
									<div class="css-rd2t8e e17n0xi3">
										<h1 class="css-dyhp2o e17n0xi2">
											집들이<span class="css-1vy2ypg e17n0xi0">0</span>
										</h1>
										<div class="css-vxgh1s e17n0xi1"></div>
									</div>
									<a class="css-f61xoy e1s15hxd1" href="/projects/write"><svg
											width="16" height="16" viewBox="0 0 16 16"
											preserveAspectRatio="xMidYMid meet"
											class="css-1n1rkai e1s15hxd0">
											<path fill="currentColor" d="M9 2v5h5v2H9v5H7V9H2V7h5V2h2z"></path></svg>첫
										번째 집들이를 올려보세요</a>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
