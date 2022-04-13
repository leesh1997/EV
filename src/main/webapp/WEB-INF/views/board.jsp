<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.board_indicate {
	justify-content: center;
	margin-left: 100px;
	padding: 20px;
	font-size: 8px;
}

.board_list_gallery {
	justify-content: center;
	margin-left: 100px;
}

.board_list_gallery ul {
	overflow: visible;
	margin-right: -20px;
	margin-left: -20px;
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
</style>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="board_wrap">
		<div class="header">
			<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">Interior
				Gallery</h1>
		</div>
		<div class="board_indicate">
			<span style="margin-top: 0; margin-left: 50px; padding-top: 20px">으음
				예쁜사진좀 올려봐~!</span>
		</div>
		<form action="#" method="post">
			<div class="board_list_gallery">
				<ul>
					<li style="width: 25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="#"> <img
									src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Simply%20White_OC-117@__gongzone(1).png"
									width="320" height="320" class="js_image_load">
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
					<li style="width: 25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="#"> <img
									src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
									width="320" height="320" class="js_image_load">
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
					<li style="width: 25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="#"> <img
									src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Sherwood%20Green%20HC-118_@gomigomigom.gom(3).jpg"
									width="320" height="320" class="js_image_load">
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
					<li style="width: 25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="#"> <img
									src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Simply%20White_OC-117@__gongzone(1).png"
									width="320" height="320" class="js_image_load">
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
					<li style="width: 25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="#"> <img
									src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
									width="320" height="320" class="js_image_load">
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
					<li style="width: 25%">
						<div class="gallery_cont">
							<div class="board_img">
								<a href="#"> <img
									src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/Sherwood%20Green%20HC-118_@gomigomigom.gom(3).jpg"
									width="320" height="320" class="js_image_load">
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
		</form>
	</div>

</body>
</html>