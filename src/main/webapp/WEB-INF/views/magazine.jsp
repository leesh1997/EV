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
	font-size: large;
	text-align: center;
}

h2 {
	text-indent: 30px;
}

.maga-img1 {
	width: 350px;
}

.panel-body {
	width: max-content;
	height: 310px;
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
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="container-md main_content magazine"
		style="margin-left: 150px;">
		<h2>Magazine Site</h2>
		<div class="panel-default">
			<!-- 시작 -->
<!-- 
			<%-- <c:forEach var="mg" items="${mzList}" varStatus="${mz_seq}">
				<c:if test="${mz_seq % 2 != 0}">
					<div class="Panel with panel-default class">
						<div class="panel-body" style="float: left; margin-left: 20px">
							<td class="maga-img1"><a href="${mz_site }" target="_blank">
									<img src="${mz_img }" class="img-thumbnail" />
							</a></td>
						</div>
						<div class="panel-body"
							style="float: left; margin-top: 10px; margin-left: 30px">
							<td class="maga-con1"><a href="${mz_site }" target="_blank">
									<p class="content1">${mz_title }</p>
							</a> <br /> <br /> <br />
								<p class="content1">${mz_content }</p></td>
						</div>

					</div>
				</c:if>
				<c:otherwise>
					<div class="Panel with panel-default class row">
						<div class="panel-body" style="float: left; margin-left: 20px">
							<td class="maga-img1"><a href="${mz_site }" target="_blank">
									<img src="${mz_img }" class="img-thumbnail" />
							</a></td>
						</div>
						<div class="panel-body"
							style="float: left; margin-top: 10px; margin-left: 30px">
							<td class="maga-con1"><a href="${mz_site }" target="_blank">
									<p class="content1">${mz_title }</p>
							</a> <br /> <br /> <br />
								<p class="content1">${mz_content }</p></td>
						</div>
					</div>
				</c:otherwise>
			</c:forEach> --%>
 -->


			<div class="Panel with panel-default class">
				<div class="panel-body" style="float: left; margin-left: 20px">
					<td class="maga-img1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=8"
						target="_blank"> <img src="resources/img/maga1.png"
							class="img-thumbnail" /></a></td>
				</div>
				<div class="panel-body"
					style="float: left; margin-top: 10px; margin-left: 30px">
					<td class="maga-con1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=8"
						target="_blank">
							<p class="content1">벤자민 무어 2022 컬러 트렌드</p>
					</a> <br /> <br /> <br />
						<p class="content1">여기에 내용이 들어감</p></td>
				</div>
			</div>
			<!-- 끝 -->
			<div class="Panel with panel-default class row">
				<div class="panel-body" style="float: left; margin-left: 20px">
					<td class="maga-img1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=7"
						target="_blank"> <img src="resources/img/maga2.png"
							class="img-thumbnail" /></a></td>
				</div>
				<div class="panel-body"
					style="float: left; margin-top: 10px; margin-left: 30px">
					<td class="maga-con1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=7"
						target="_blank">
							<p class="content1">벤자민 무어 2021 컬러 트렌드</p>
					</a> <br /> <br /> <br />
						<p class="content1">여기에 내용이 들어감</p></td>
				</div>
			</div>

			<div class="Panel with panel-default class">
				<div class="panel-body" style="float: left; margin-left: 20px">
					<td class="maga-img1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=6"
						target="_blank"> <img src="resources/img/maga3.png"
							class="img-thumbnail" /></a></td>
				</div>
				<div class="panel-body"
					style="float: left; margin-top: 10px; margin-left: 30px">
					<td class="maga-con1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=6"
						target="_blank">
							<p class="content1">벤자민 무어 2020 컬러 트렌드</p>
					</a> <br /> <br /> <br />
						<p class="content1">여기에 내용이 들어감</p></td>
				</div>
			</div>

			<div class="Panel with panel-default class row">
				<div class="panel-body" style="float: left; margin-left: 20px">
					<td class="maga-img1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=5"
						target="_blank"> <img src="resources/img/maga4.png"
							class="img-thumbnail" /></a></td>
				</div>
				<div class="panel-body"
					style="float: left; margin-top: 10px; margin-left: 30px">
					<td class="maga-con1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=5"
						target="_blank">
							<p class="content1">벤자민 무어 2019 컬러 트렌드</p>
					</a> <br /> <br /> <br />
						<p class="content1">여기에 내용이 들어감</p></td>
				</div>
			</div>

			<div class="Panel with panel-default class">
				<div class="panel-body" style="float: left; margin-left: 20px">
					<td class="maga-img1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=4"
						target="_blank"> <img src="resources/img/maga5.png"
							class="img-thumbnail" /></a></td>
				</div>
				<div class="panel-body"
					style="float: left; margin-top: 10px; margin-left: 30px">
					<td class="maga-con1"><a
						href="https://www.benjaminmoore.co.kr/board/view.php?&bdId=trend&sno=4"
						target="_blank">
							<p class="content1">벤자민 무어 2018 컬러 트렌드</p>
					</a> <br /> <br /> <br />
						<p class="content1">여기에 내용이 들어감</p></td>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
