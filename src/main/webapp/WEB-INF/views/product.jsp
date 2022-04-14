<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.board_wrap {
	margin-left: 100px;
	position: relative;
	z-index: 50;
}

#line {
	margin-left: 20px;
}

.board_indication {
	justify-content: center;
	margin-left: 100px;
	font-size: 8px;
}

.board_service {
	display: flex;
	justify-content: flex-end;
}

.board_search {
	padding: 15px;
}

.board_btn_writingform {
	padding: 15px;
}

.board_list_gallery {
	justify-content: center;
	margin-left: 100px;
	padding: 10px;
}

.board_list_gallery ul {
	width: 100%;
	display: inline-block;
	margin-right: 20px;
	margin-left: 20px;
}

.board_list_gallery ul li {
	display: inline-block;
	position: relative;
	font-size: 18px;
	text-align: center;
	padding: 0 20px 80px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

button {
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
}


</style>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="board_wrap">
		<div class="header">
			<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">Interior
				Gallery</h1>
		</div>
		<hr id="line" />
		<div class="board_indication">
			<!-- 			<span style="margin-top: 0; margin-left: 50px; padding-top: 20px">으음
				예쁜사진좀 올려봐~!</span> -->
			<div class="board_service">
				<div class="board_search">
					<input type="text">
					<button>검색</button>
				</div>
				<div class="board_btn_writingform">
					<a href="board_writing_form.do"><button>게시물 작성</button></a>
				</div>
			</div>
		</div>
		<hr id="line" />

		<div class="board_list_gallery">
			<ul>
				<c:forEach var="post" items="${list}" varStatus="i">
					<li style="width: 22%">
						<div class="gallery_container">
							<div class="board_img">
								<a href="${post.p_url }"> <img src="${post.p_imgurl}" width="130%"
									height="auto" class="gallery_items" style="margin-left: -15%">
								</a>
							</div>
							<div class="gallery_info_cont">

								<div class="board_tit">
									<a href="#"> <strong>${post.p_name}</strong>
									</a>
									<p>${post.p_brand}</p>
									<p>${post.p_price } 원</p>
								</div>
							</div>
							<!-- //gallery_info_cont -->
						</div> <!-- //gallery_cont -->
					</li>
				</c:forEach>
			
			</ul>
		</div>

	</div>

</body>
</html>