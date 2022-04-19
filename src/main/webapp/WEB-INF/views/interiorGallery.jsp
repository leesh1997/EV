<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.interior_wrap {
	margin-left: 100px;
	position: relative;
	z-index: 50;
}

#line {
	margin-left: 20px;
}

.interior_list_gallery {
	justify-content: center;
	margin-left: 100px;
	padding: 10px;
}

.interior_list_gallery ul {
	width: 100%;
	display: inline-block;
	margin-right: 20px;
	margin-left: 20px;
}

.interior_list_gallery ul li {
	display: inline-block;
	position: relative;
	font-size: 18px;
	text-align: center;
	padding: 0 20px 80px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.colors_interior {
	display: inline-flex;
	justify-content: space-between;
}

.interior_img {
	padding-bottom: 20px;
}

.pl_colors {
	display: table-cell;
	margin-left: 7px;
	margin-right: 7px;
	width: 70px;
	height: 70px;
}
</style>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="interior_wrap">

		<div class="header">
			<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">Interior
				Gallery</h1>
		</div>
		<hr id="line" />

		<div class="interior_list_gallery">
			<ul>
				<c:forEach var="imgs" items="${list}" varStatus="i" begin="0"
					end="8">
					<li>
						<div class="interior_img_container" data-index="${imgs.i_seq}">
							<div class="interior_img">
								<img src="${imgs.i_url}" width="100%" height="400"
									class="gallery_items">
							</div>
							<div class="colors_interior">
								<div class="pl_colors"
									style="background-color: rgb(${imgs.i_rgb1}); color: rgb(${imgs.i_rgb1})"></div>
								<div class="pl_colors"
									style="background-color: rgb(${imgs.i_rgb2}); color: rgb(${imgs.i_rgb2})"></div>
								<div class="pl_colors"
									style="background-color: rgb(${imgs.i_rgb3}); color: rgb(${imgs.i_rgb3})"></div>
								<div class="pl_colors"
									style="background-color: rgb(${imgs.i_rgb4}); color: rgb(${imgs.i_rgb4})"></div>
								<div class="pl_colors"
									style="background-color: rgb(${imgs.i_rgb5}); color: rgb(${imgs.i_rgb5})"></div>
							</div>
						</div>
					</li>
				</c:forEach>
				<li>
					<div class="interior_img_container">
						<div class="interior_img">
							<img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
								width="100%" height="400" class="gallery_items">
						</div>
						<div class="colors_interior">
							<div class="pl_colors"
								style="background-color: rgb(119, 126, 132); color: rgb(119, 126, 132)"></div>
							<div class="pl_colors"
								style="background-color: rgb(181, 185, 189); color: rgb(181, 185, 189)"></div>
							<div class="pl_colors"
								style="background-color: rgb(161, 164, 169); color: rgb(161, 164, 169)"></div>
							<div class="pl_colors"
								style="background-color: rgb(245, 176, 151); color: rgb(245, 176, 151)"></div>
							<div class="pl_colors"
								style="background-color: rgb(211, 206, 201); color: rgb(211, 206, 201)"></div>
						</div>
					</div>
				</li>
				<li>
					<div class="interior_img_container">
						<div class="interior_img">
							<img
								src="https://bmp1883jpg.hgodo.com/data/color%20review/220304/484_White%20Dove%20OC-17_@al_satang(2).png"
								width="100%" height="400" class="gallery_items">
						</div>
						<div class="colors_interior">
							<div class="pl_colors"
								style="background-color: rgb(119, 126, 132); color: rgb(119, 126, 132)"></div>
							<div class="pl_colors"
								style="background-color: rgb(181, 185, 189); color: rgb(181, 185, 189)"></div>
							<div class="pl_colors"
								style="background-color: rgb(161, 164, 169); color: rgb(161, 164, 169)"></div>
							<div class="pl_colors"
								style="background-color: rgb(245, 176, 151); color: rgb(245, 176, 151)"></div>
							<div class="pl_colors"
								style="background-color: rgb(211, 206, 201); color: rgb(211, 206, 201)"></div>
						</div>
					</div>
				</li>
			</ul>
		</div>


	</div>

</body>
</html>