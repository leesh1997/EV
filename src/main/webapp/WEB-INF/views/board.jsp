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
								<a href="#"> <img src="${post.b_file}" width="100%"
									height="300" class="gallery_items">
								</a>
							</div>
							<div class="gallery_info_cont">

								<div class="board_tit">
									<a href="#"> <strong>${post.b_title}</strong>
									</a>
									<p>${post.m_nick}</p>
								</div>
							</div>
							<!-- //gallery_info_cont -->
						</div> <!-- //gallery_cont -->
					</li>
				</c:forEach>


				<li style="width: 22%">
					<div class="gallery_container">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Simply%20White_OC-117@__gongzone(1).png"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_cont">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_cont">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Sherwood%20Green%20HC-118_@gomigomigom.gom(3).jpg"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_cont">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Simply%20White_OC-117@__gongzone(1).png"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_cont">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_cont">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Sherwood%20Green%20HC-118_@gomigomigom.gom(3).jpg"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_container">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Simply%20White_OC-117@__gongzone(1).png"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
				<li style="width: 22%">
					<div class="gallery_cont">
						<div class="board_img">
							<a href="#"> <img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
								width="100%" height="300" class="gallery_items">
							</a>
						</div>
						<div class="gallery_info_cont">

							<div class="board_tit">
								<a href="#"> <strong>title</strong>
								</a>
								<p>writer</p>
							</div>
						</div>
						<!-- //gallery_info_cont -->
					</div> <!-- //gallery_cont -->
				</li>
			</ul>
		</div>

	</div>

</body>
</html>