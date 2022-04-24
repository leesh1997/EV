<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video</title> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.12.4.min.js" crossorigin="anonymous"></script>

<style>
 
.video_view{
	position:relative;
	display: inline;
}

.popupModalVideo{
	position:relative;
	margin-bottom: 15px;
	z-index: 50;
	height: 350.7px;
}

.item{
	margin-left: 150px;
}

.video_modal_popup.reveal {
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

.video_modal_popup .video-wrapper {
    position: relative;
    width: 80%;
    padding-bottom: 45%;
    margin-right: 150px;
    z-index: 500
}

.video_modal_popup .video-wrapper iframe {
    position: absolute;
    width: 100%;
    height: 100%;
}

.video_modal_popup.reveal .video_modal_popup-closer {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, .9);
    z-index: 300
}

.img-thumbnail {
    padding: 4px;
    line-height: 1.42857143;
    background-color: #fff;
    position: relative;
    border: 1px solid #ddd;
    border-radius: 4px;
    transition: all .2s ease-in-out;
    display: inline-block;
    max-width: 100%;
    z-index: 50;
    height: auto;

}

.paging{
	position: relative;
	z-index: 1;
	margin-left: 150px; 
	margin-bottom: 15px;
	margin-right: 150px;
}

.vdtitle{
	font-size : large;
	white-space: normal;
	overflow : hidden;
	text-overflow : ellipsis; 
	width: 73%;
	
	position: relative;
	z-index: 50;
	word-wrap : brek-word; 
	display : -webkit-box;
	-webkit-line-clamp : 2;
	-webkit-box-orient: vertical; 
	padding-bottom: 50px;
}

.pager li>a, .pager li>span {
    display: inline-block;
    padding: 5px 14px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 0px;
}

</style>



</head>

<body style="overflow-x : hidden">
	<jsp:include page = "side_topbar.jsp"></jsp:include>
<div style="margin-top: 50px; margin-left: 150px">
	<h1 style="font-weight: bold">Video</h1>
	
</div>

	<div class="item">
			<c:forEach var="vd" items="${requestScope.list}">
				<div class="col-sm-4 popupModalVideo">
			    	<a data-video="${vd.v_url}"><img src="${vd.v_img}" class="img-thumbnail" style="margin-bottom: 15px; width: 400px; height : 250px"/></a>
			    	<p class="vdtitle" style="text-overflow:ellipsis;">${vd.v_title}</p>
			    	<!-- <div style="margin-bottom: 100px"></div> -->
			    </div>
			</c:forEach>
			<div class="video_modal_popup" style="margin-left: 150px">
				  	<div class="video_modal_popup-closer"></div>
				  	<div class="modal-footer">
	      		</div>
			</div>		
	</div>
	
	<div class="paging" style="text-align: center; font-size: 15px">
		<ul class="pagination pager">
			<c:choose>
				<c:when test="${paging.prev}">
					<li><a href="video.do?pageNum=${paging.beginPage-1}">Previous</a></li>
				</c:when>
			</c:choose>
			<c:forEach begin="${paging.beginPage}" end="${paging.endPage}"
				step="1" varStatus="status">
					<li><a href="video.do?pageNum=${status.index}"
						class="bottom_count${status.index}">${status.index}</a></li>
			</c:forEach>
			<c:choose>
				<c:when test="${paging.next}">
					<li><a href="video.do?pageNum=${paging.endPage+1}">Next</a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
	
		<div class="search_line" style="text-align: center;">
			<form action="search.do">
				<input type="text" name="search_word" class="search_bar">
				<button type="submit" class="search_button">검색</button>
			</form>
			<a href="videoSearch.do?pageNum=1?search_word=인테리어">검색 테스트 링크</a>
		</div>

	

<script>

$(".bottom_count"+${page}).css('color','red');

$(".popupModalVideo a").click(function() {
    $(".video_modal_popup").addClass("reveal"),
    $(".video_modal_popup .video-wrapper").remove(),
    $(".video_modal_popup").append("<div class='video-wrapper'><iframe width='560' height='315' src='https://youtube.com/embed/" + $(this).data("video") + "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")
}),
$(".video_modal_popup-closer").click(function() {
    $(".video_modal_popup .video-wrapper").remove(),
    $(".video_modal_popup").removeClass("reveal")
});

</script> 


</body>
</html>

