<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

.palette_view {
	display: flex;
	justify-content: center;
}

.interior_list_gallery {
	justify-content: center;
	margin-left: 10px;
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

.interior_style_list {
	display: flex;
	justify-content: center;
}

input[type="submit"] {
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
	margin-left: 20px;
}

.paging ul li {
	display: inline-block;
	position: relative;
	margin-bottom: 50px;
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
		<div class="palette_view">
			<c:forEach var="palette" items="${p_list}" varStatus="i" begin="0" end="4">
				<div class="palette_colors" data-index="${palette.pl_seq}">
					<div class="block" style="background-color: rgb(${palette.pl_c1}); color: rgb(${palette.pl_c1})" >
						<div class="color_name"></div>
					</div>
					<div class="block" style="background-color: rgb(${palette.pl_c2}); color: rgb(${palette.pl_c2})">
						<div class="color_name"></div>
					</div>
					<div class="block" style="background-color: rgb(${palette.pl_c3}); color: rgb(${palette.pl_c3})">
						<div class="color_name"></div>
					</div>
					<div class="block" style="background-color: rgb(${palette.pl_c4}); color: rgb(${palette.pl_c4})">
						<div class="color_name"></div>
					</div>
					<div class="block" style="background-color: rgb(${palette.pl_c5}); color: rgb(${palette.pl_c5})">
						<div class="color_name"></div>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="interior_style_list">
			<input type="submit" class="list_items" value="침실"> <input
				type="submit" class="list_items" value="욕실"> <input
				type="submit" class="list_items" value="거실"> <input
				type="submit" class="list_items" value="드레스룸"> <input
				type="submit" class="list_items" value="서재"> <input
				type="submit" class="list_items" value="주방"> <input
				type="submit" class="list_items" value="홈오피스"> <input
				type="submit" class="list_items" value="홈카페"> <input
				type="submit" class="list_items" value="홈바"> <input
				type="submit" class="list_items" value="테라스"> <input
				type="submit" class="list_items" value="정원">

		</div>
		<hr id="line" />
		<div class="interior_list_gallery">
			<ul>
				<c:forEach var="imgs" items="${list}" varStatus="i">
					<li>
						<div class="interior_img_container" data-index="${imgs.i_seq}">
							<div class="interior_img">
								<img src="${imgs.i_url}" width="100%" height="300"
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
			</ul>
		</div>




		<div class="paging" style="text-align: center; font-size: 15px">
			<ul class="pagination pager">
				<c:choose>
					<c:when test="${paging.prev}">
						<li><a
							href="interiorGallery.do?pageNum=${paging.beginPage-1}">Previous</a></li>
					</c:when>
				</c:choose>
				<c:forEach begin="${paging.beginPage}" end="${paging.endPage}"
					step="1" varStatus="status">
					<li><a href="interiorGallery.do?pageNum=${status.index}"
						class="bottom_count${status.index}">${status.index}</a></li>
				</c:forEach>
				<c:choose>
					<c:when test="${paging.next}">
						<li><a href="interiorGallery.do?pageNum=${paging.endPage+1}">Next</a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>




	</div>

	<script>

		$(".bottom_count"+${page}).css('color','grey');

	</script>


</body>
</html>