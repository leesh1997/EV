<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Interior Gallery</title> 
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
	flex-direction: column;
	position: relative;
	width: 25px;
	height: 25px;
	margin: 1px;
	/* border: 10px solid #fff; */
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

#dropColor1, #dropColor2, #dropColor3 {
	display: flex;
	flex-direction: row;
	width: 270px;
	margin-left: 100px;
}

#dropPalette1, #dropPalette2 {
	display: flex;
	flex-direction: column;
	width: 270px;
	margin-left: 100px;
}

#colorButton, #mypaletteButton {
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
	margin-left: 20px;
}

.palette_view {
	display: none;
}

.palette_colors {
	display: flex;
	flex-direction: row;
}
.gallery_items_like{
	    position: absolute;
    margin-top:200px;;
    margin-right:230px;
    background-color:white;
}
</style>
<body style="overflow-x: hidden">
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="interior_wrap">

		<div class="header">
			<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">Interior
				Gallery</h1>
		</div>
		<hr id="line" />



		<div class="interior_style_list">
			<button type="button" id="colorButton">색상</button>
			<c:choose>
				<c:when test="${info != null}">
					<button type="button" id="mypaletteButton">나의 팔레트</button>
				</c:when>
				<c:when test="${info == null}">
					<a href="#"><button type="button" id="mypaletteButton">나의
							팔레트</button></a>
					<script type="text/javascript">
				$("#mypaletteButton").click(function(){
					alert("로그인 후 이용 가능합니다.");
					location.href="login.do";
				})
			</script>
				</c:when>
			</c:choose>
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
		<div>
				<div id="dropColor1"></div>
				<div id="dropColor2"></div>
				<div id="dropColor3"></div>
		</div>

		<div>
			<div id="dropPalette1" style="margin-left: 500px;"></div>
			<div id="dropPalette2"></div>
		</div>
		<hr id="line" />


		<div class="interior_list_gallery">
			<c:forEach var="imgs" items="${list}" varStatus="i">
				<div class="col-sm-4 popupModalImg">
				<div>
					<a data-img="${imgs.i_url}"><img src="${imgs.i_url}"
						class="img-thumbnail"
						style="margin-bottom: 15px; width: 400px; height: 250px" />
						
						</a>
						<button id="like${post.p_seq}" class="gallery_items_like" value="${post.p_seq}">
						 	<svg baseProfile="tiny" height="24px" id="Layer_1" version="1.2" viewBox="0 0 24 24" width="24px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><path d="M12,20c-0.195,0-0.391-0.057-0.561-0.172c-0.225-0.151-5.508-3.73-7.146-5.371C2.462,12.626,2.25,10.68,2.25,9.375   C2.25,6.411,4.661,4,7.625,4C9.427,4,11.023,4.891,12,6.256C12.977,4.891,14.573,4,16.375,4c2.964,0,5.375,2.411,5.375,5.375   c0,1.305-0.212,3.251-2.043,5.082c-1.641,1.641-6.923,5.22-7.146,5.371C12.391,19.943,12.195,20,12,20z M7.625,6   C5.764,6,4.25,7.514,4.25,9.375c0,1.093,0.173,2.384,1.457,3.668c1.212,1.212,4.883,3.775,6.293,4.746   c1.41-0.971,5.081-3.534,6.293-4.746c1.284-1.284,1.457-2.575,1.457-3.668C19.75,7.514,18.236,6,16.375,6S13,7.514,13,9.375   c0,0.552-0.447,1-1,1s-1-0.448-1-1C11,7.514,9.486,6,7.625,6z"/></g></svg>
							</button>
				</div>
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

		/* 색상  */
		const my_btn = document.getElementById('colorButton');
		
	    my_btn.addEventListener('click', function() {
	        $("#dropColor1").append("<c:forEach var='color' items='${standardList}' varStatus='i' begin='0' end='9'> <div class='block' data-index='${color.c_seq}' style='background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb});'><a data-colors='${color.c_rgb}' href='interiorSearch.do?c_group=${color.c_group}&pageNum=1'>1<input type='hidden' name='inSer' value='${color.c_seq}'></a> </div> </c:forEach>" )
	        $("#dropColor2").append("<c:forEach var='color' items='${standardList}' varStatus='i' begin='10' end='19'> <div class='block' data-index='${color.c_seq}' style='background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb});'><a data-colors='${color.c_rgb}' href='interiorSearch.do?c_group=${color.c_group}&pageNum=1'>1<input type='hidden' name='inSer' value='${color.c_seq}'></a> </div> </c:forEach>" )
	        $("#dropColor3").append("<c:forEach var='color' items='${standardList}' varStatus='i' begin='20' end='29'> <div class='block' data-index='${color.c_seq}' style='background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb});'><a data-colors='${color.c_rgb}' href='interiorSearch.do?c_group=${color.c_group}&pageNum=1'>1<input type='hidden' name='inSer' value='${color.c_seq}'></a> </div> </c:forEach>" )
	    }, {once : true});
	    
	    $("dropColor1 a").click (function() {
	    	console.log("눌렀나");
	    	$("#shit button").append("<p>왜 안되냐</p>");
	    });
			
				$(document).ready(function(){
					$('#dropColor1, #dropColor2, #dropColor3').hide();
					
				})
				
			$('#colorButton').click(function() {
					if($('#dropPalette1, #dropPalette2').hide()){
				if($('#colorButton').text()=='색상'){
				$('#colorButton').text('Close');
				$('#dropColor1').slideDown(500);
				$('#dropColor2').slideDown(500);
				$('#dropColor3').slideDown(500);
			}
				
			else if($('#colorButton').text()=='Close'){
				$('#colorButton').text('색상');
				$('#dropColor1').slideUp(500);
				$('#dropColor2').slideUp(500);
				$('#dropColor3').slideUp(500);
			}
					} else if($('#dropPalette1, #dropPalette2').show()){
						$('#dropPalette1, #dropPalette2').hide();
					}
			})
				
			
			/* 마이팔레트  */
			const palette_btn = document.getElementById('mypaletteButton');

				palette_btn.addEventListener('click', function() {
	        $("#dropPalette1").append("<c:forEach var='palette' items='${p_list}' varStatus='i' begin='0' end='4'> "+ 
	        						 "<div class='palette_colors' data-index='${palette.pl_seq}'> "+ 
	        						 "<div class='block' style='background-color: ${palette.pl_c1};'> </div> "+
	        						 "<div class='block' style='background-color: ${palette.pl_c2};'> </div> "+ 
	        						 "<div class='block' style='background-color: ${palette.pl_c3};'> </div> "+
	        						 "<div class='block' style='background-color: ${palette.pl_c4};'> </div> "+
	        						 "<div class='block' style='background-color: ${palette.pl_c5};'> </div> </div> </c:forEach>" )
	    }, {once : true});
			
				$(document).ready(function(){
					$('#dropPalette1, #dropPalette2').hide();
				});
				
			$('#mypaletteButton').click(function() {
				if($('#dropColor1, #dropColor2, #dropColor3').hide()){
					if($('#mypaletteButton').text()=='나의 팔레트'){
						$('#mypaletteButton').text('Close');
						$('#dropPalette1').slideDown(500);
						$('#dropPalette2').slideDown(500);
					}
					else if($('#mypaletteButton').text()=='Close'){
						$('#mypaletteButton').text('나의 팔레트');
						$('#dropPalette1').slideUp(500);
						$('#dropPalette2').slideUp(500);
					}
			} 
				else if($('#dropColor1, #dropColor2, #dropColor').show()){
					$('#dropColor1, #dropColor2').hide();
				}
			});
			
			
			
			
			
	</script>
	<%-- <div class="palette_view">
			<c:forEach var="palette" items="${p_list}" varStatus="i" begin="0"
				end="4">
				<div class="palette_colors" data-index="${palette.pl_seq}">
					<div class="block"
						style="background-color: ${palette.pl_c1}; ">
					</div>
					<div class="block"
						style="background-color: ${palette.pl_c2}; ">
					</div>
					<div class="block"
						style="background-color: ${palette.pl_c3}; ">
					</div>
					<div class="block"
						style="background-color: ${palette.pl_c4}; ">
					</div>
					<div class="block"
						style="background-color: ${palette.pl_c5}; ">
					</div>
				</div>
			</c:forEach>
		</div> --%>

</body>
</html>