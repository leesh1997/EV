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
	justify-content: center;
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
.hehe{
	text-align: center;
}
ul.hehe li{
	padding : 10px;
}
.gallery_container{
font-size: 11px;}
.board_indication{
	display:flex;
	flex-direction: column;
	
}
.search_list{
	position: relative;
	display: flex;
	justify-content: center;
}
.search_list ul{
width: 60%;
}
.search_list ul li{
	display: inline-block;	
	margin-right: 10px; 
	font-size: 13px;
}
input[type="submit"]{
	border:none;
	background-color: white;
}
input[type="submit"]:hover{
	border:none;
	background-color: violet;
}
.fromstyle{
	display: flex;
	flex-direction: row;
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
				<form action="product_search.do?pageNum=1" method="post"  
				id="search_text" >
					<input type="text"name="searchinfo" style="width: 600px; height: 15px;">	
					<button>검색</button>				
				</form>
			
				</div>
				<div>
					<a href="product.do?pageNum=1">전체결과 보기</a>
				</div>
				<div class="board_btn_writingform">
					<a href="board_writing_form.do"><button>게시물 작성</button></a>
				</div>
				
			</div>
			<div class= "search_list">
				<ul>
					<c:forEach var = "list_type" items="${type_list }" varStatus="i">
					<li>
					<form action="product_search.do?pageNum=1" method="post" class="formstyle">
					<input type="submit" name="searchinfo" value="${list_type.p_type}">
					</form>
					</li>
					</c:forEach>
				</ul>
				</div>
		</div>
		<hr id="line" />

		<div class="board_list_gallery">
			<ul>
				<c:forEach var="post" items="${requestScope.list}" varStatus="i">
					<li style="width: 22%">
						<div class="gallery_container">
							<div class="board_img">
								<a href="${post.p_url }"> <img src="${post.p_imgurl}" width="130%"
									height="auto" class="gallery_items" style="margin-left: -15%">
								</a>
							</div>
							<div class="gallery_info_cont">

								<div class="board_tit">
									<a href="#"> <strong style="font-size: 14px">${post.p_name}</strong>
									</a>
									<p>${post.p_brand} /  종류: ${post.p_type }</p>
									<p>${post.p_price } 원  </p>
								</div>
							</div>
							<!-- //gallery_info_cont -->
						</div> <!-- //gallery_cont -->
					</li>
				</c:forEach>
				</ul>
	<c:choose>
		<c:when test="${empty search_info}">
		
			<ul class="hehe">
			<li><a href="product.do?pageNum=1">&lt;&lt;</a></li>
			<li class="left_btn"><a href="product.do?pageNum=${paging.beginPage-1}">&lt;</a></li>
			<c:forEach var="i" begin="${paging.beginPage }" end="${paging.endPage }"
				varStatus = "status">
				<li><a href="http://localhost:8081/ev/product.do?pageNum=${status.index}"
				class= "btn_count${status.index}">${status.index}</a></li>
				
			</c:forEach>
			<li class="right_btn"><a href="product.do?pageNum=${paging.endPage+1}">&gt;</a></li>
			<li><a href="product.do?pageNum=${paging.totalPage }">&gt;&gt;</a></li>
			</ul>
			
		</c:when>
		
		
		<c:otherwise>
			<ul class="hehe">
			<li><a href="product_search.do?searchinfo=${search_info}&pageNum=1">&lt;&lt;</a></li>
			<li class="left_btn"><a href="product_search.do?searchinfo=${search_info}&pageNum=${paging.beginPage-1}">&lt;</a></li>
			<c:forEach var="i" begin="${paging.beginPage }" end="${paging.endPage }"
				varStatus = "status">
				<li><a href="product_search.do?searchinfo=${search_info}&pageNum=${status.index}"
				 class= "btn_count${status.index}">${status.index}</a></li>
				
			</c:forEach>
			<li class="right_btn"><a href="product_search.do?searchinfo=${search_info}&pageNum=${paging.endPage+1}" >&gt;</a></li>
			<li><a href="product_search.do?searchinfo=${search_info}&pageNum=${paging.totalPage }">&gt;&gt;</a></li>
			</ul>
		
		</c:otherwise>
	
	</c:choose>
			
		</div>

	</div>
	<script>
		$(".btn_count"+${page}).css('color','violet');
		$(".btn_count"+${page}).css('border-bottom','solid 1px violet');

	</script>
</body>
</html>