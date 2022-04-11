<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<style>
.palette_wrap {
	margin-left: 100px;
}

.header {
	display: block;
	position: relative;
}

.draft-details {
	position: relative;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: space-between;
	top: 0;
	/* width: max-content; */
	height: max-content;
	padding: 0 20px;
	/* z-index: 999; */
	background-color: #fff;
}

.palette_colors {
	display: flex;
	position: relative;
	flex-direction: row;
	width: 100%;
	padding: 20px;
	transition: transform 0.5s cubic-bezier(0, 0.99, 0, 0.99);
	justify-content: center;
}

.gallery-container {
	width: inherit;
	height: inherit;
	display: flex;
	flex-direction: row;
	flex-flow: wrap;
	justify-content: space-around;
	background-color: #f1f5fc;
}

.block {
	display: table;
	position: relative;
	width: 6vw;
	height: 6vw;
	margin: 1vw;
	border: 10px solid #fff;
	cursor: pointer;
	border-radius: 50%;
	transition: all 0.5s cubic-bezier(0, 0.99, 0, 0.99);
}



.chosen_colors {
	width: 7vw;
	height: 7vw;
	margin: 1vw;
	border: 10px solid #fff;
	cursor: pointer;
	border-radius: 50%;
}

.btn_create {
	vertical-align: middle;
	width: 10vw;
	height: 2vw;
	margin: 1vw;
}

.block .block-description {
	display: table-cell;
	position: absolute;
	margin: 45px 15px 0px 15px;
	padding: 10px;
	text-align: center;
	/* margin: 0px 10px 10px 0px; */
	width: 100%
	color: #02142b;
	font-size: 0.7em;
	text-transform: uppercase;
	line-height: 1.2em;
	color: #f1f5fc;
	transition: border-radius 0.5s cubic-bezier(0, 0.99, 0, 0.99);
}
.btn_create {
	display: block;
	margin-top: 70px;
}
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="palette_wrap">
		<div class="header">
			<h1 style="margin-top: 0; padding-top: 20px">My palette 생성</h1>
		</div>
		<div class="draft-details">
			<a href="http://www.khroma.co">
				<div class="logo">
					<!-- <img
            src="/최종/img/ev_icon.png"
            width="200"
            height="auto"
            alt="demo"
            id="btn_goMain"
          /> -->
				</div>
			</a>
			<div class="palette_colors">
				<div class="chosen_colors"
					style="background-color: rgb(84, 17, 193)" data-index="31"></div>
				<div class="chosen_colors"
					style="background-color: rgb(95, 131, 148)" data-index="12"></div>
				<div class="chosen_colors"
					style="background-color: rgb(198, 115, 109)" data-index="16"></div>
				<div class="chosen_colors"
					style="background-color: rgb(254, 170, 130)" data-index="28"></div>
				<div class="chosen_colors"
					style="background-color: rgb(207, 206, 245)" data-index="24"></div>
				<br>
				<div id="create">
					<button class="btn_create">팔레트 생성하기</button>
				</div>
			</div>
		</div>
		
		<div id="colorGallery" class="gallery-container">
	<c:forEach var="color" items="${list}" varStatus="i">
	<div class="block" data-index="${color.c_seq}"
				style="background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb})">
				<span class="block-description">${color.c_name}</span>
			</div>
	</c:forEach>
	
		</div>
	</div>
</body>
</html>
