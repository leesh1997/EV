<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/main.css" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>매거진 페이지</title>
<style>
.content1 {
	font-size: 20px;
	text-align: center;
	width: 300px;
}

.paging {
	position: relative;
	z-index: 1;
	margin-left: 150px;
	margin-bottom: 15px;
	margin-right: 250px;
}

h2 {
	text-indent: 30px;
}

.maga-img1 {
	width: 350px;
}

.panel-body {
	width: max-content;
}

.magazine {
	/* display: flex; */
	position: absolute;
	width: 100%;
	/*  margin-left: 100px;
    height: 100vw;
    width: calc(100vw - 100px); */
	z-index: 50;
}

.board_list_magazine ul li {
	display: inline-block;
	position: relative;
	font-size: 18px;
	text-align: center;
	padding: 0 20px 20px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.pager li>a, .pager li>span {
	display: inline-block;
	padding: 5px 14px;
	background-color: #fff;
	border-radius: 0px;
}

.img-thumbnail {
	width: 400px;
	height: 450px;
	border-radius:4%; 
}

#line {
	border-color: #999;
}
</style>
</head>
<body style="overflow-x: hidden;">
	<jsp:include page="side_topbar.jsp"></jsp:include>
	
	<div class="container-md main_content magazine"
		style="margin-left: 150px;">
		<h1 style="font-weight: bold;">Magazine</h1>
		<hr id="line" />
	<div>
	<br>
	<br>
	</div>
	<hr id="line" />
		<div class="board_list_magazine">
			<!-- 시작 -->
			<ul>
				<c:forEach var="mz" items="${list}">
					<li style="width: 30%; margin-right: -120px; margin-left: -30px; ">
						<%-- <c:if test="${((mz.mz_seq + 1) % 2) == 0}"> --%>
						<div class="Panel with panel-default class">
							<div class="panel-body" style="float: left; margin-left: 20px;">
								<a href="${mz.mz_site }" target="_blank"> <img
									src="${mz.mz_img }" class="img-thumbnail" />
								</a>
							</div>
							<div class="panel-body"
								style="float: left; margin-top: 0px; margin-left: 30px; padding-top: 0px;">
								<div class="board_tit">
<!-- 									<label style="margin-right: 10px; float: left">제목</label>
 -->									
									<td class="maga-con1"><a href="${mz.mz_site }"
										target="_blank"> <strong class="content1">${mz.mz_title }</strong>
									</a>
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
						<li><a href="magazine.do?pageNum=${paging.beginPage-1}">Previous</a></li>
					</c:when>
				</c:choose>
				<c:forEach begin="${paging.beginPage}" end="${paging.endPage}"
					step="1" varStatus="status">
					<li><a href="magazine.do?pageNum=${status.index}"
						class="bottom_count${status.index}">${status.index}</a></li>
				</c:forEach>
				<c:choose>
					<c:when test="${paging.next}">
						<li><a href="magazine.do?pageNum=${paging.endPage+1}">Next</a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>

	</div>
</body>
</html>
