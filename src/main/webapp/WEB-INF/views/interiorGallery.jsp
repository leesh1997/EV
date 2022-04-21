<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

.popupModalImg {
	padding-bottom: 20px;
}

.pl_colors {
	display: table-cell;
	margin-left: 7px;
	margin-right: 7px;
	width: 80px;
	height: 80px;
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

.popupModalImg {
	position: relative;
	margin-bottom: 15px;
	z-index: 50;
	height: 350.7px;
}

.img_modal_popup.reveal {
	display: flex;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	justify-content: center;
	align-items: center;
	z-index: 9999999
}

.img_modal_popup .img-wrapper {
	position: relative;
	width: 60%;
	padding-bottom: 45%;
	margin-right: 150px;
	z-index: 500
}

.img_modal_popup.reveal .img_modal_popup-closer {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .9);
	z-index: 300
}

.img-wrapper {
	width: 400px;
	height: 300px;
	margin-left: 150px;
	margin-top: 100px;
}

.pager li>a, .pager li>span {
	display: inline-block;
	padding: 5px 14px;
	background-color: #fff;
	border: 1px solid #ddd;
	border-radius: 0px;
}

.block {
	display: flex;
	flex-direction: column; position : relative;
	width: 6vw;
	height: 6vw;
	margin: 1vw;
	border: 10px solid #fff;
	cursor: pointer;
	justify-content: center;
	border-radius: 50%;
	transition: all 0.5s cubic-bezier(0, 0.99, 0, 0.99);
	position: relative;
}

#colorGallery {
	display: flex;
	flex-direction: row;
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

	<div class="dropdown">
	  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">컬러
	  <span class="caret"></span></button>
	  <ul class="dropdown-menu">
	    <li><c:forEach var="color" items="${standardList}" varStatus="i">
				<div class="block" data-index="${color.c_seq}" 
					style="background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb})">
				</div>
			</c:forEach></li>
	  </ul>
	</div>

		<button type="button" id="colorButton">컬러</button>
		
		
		
		<%-- <div id="colorGallery" class="gallery-container">
			<c:forEach var="color" items="${standardList}" varStatus="i">
				<div class="block" data-index="${color.c_seq}" onClick=""
					style="background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb})">
				</div>
			</c:forEach>
		</div> --%>

		<div id="resultMemberList" style="display: none;">
		
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
			<c:forEach var="imgs" items="${list}" varStatus="i">
				<div class="col-sm-4 popupModalImg">
					<a data-img="${imgs.i_url}"><img src="${imgs.i_url}"
						class="img-thumbnail"
						style="margin-bottom: 15px; width: 400px; height: 250px" /></a>

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


			</c:forEach>
			<div class="img_modal_popup" style="margin-left: 150px">
				<div class="img_modal_popup-closer"></div>
				<div class="modal-footer"></div>
			</div>

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
		
		$(".popupModalImg a").click(function() {
		    $(".img_modal_popup").addClass("reveal"),
		    $(".img_modal_popup .img-wrapper").remove(),
		    $(".img_modal_popup").append("<div class='img-wrapper'><img src="+ $(this).data("img")+"></div>")
		    
		}),
		$(".img_modal_popup-closer").click(function() {
		    $(".img_modal_popup .img-wrapper").remove(),
		    $(".img_modal_popup").removeClass("reveal")
		});

	</script>


</body>
</html>