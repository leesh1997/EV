<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	justify-content: center;
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
	vertical-align: middle;
}

.colors {
	display: none;
}

.btn_create {
	vertical-align: middle;
	width: 10vw;
	height: 2vw;
	margin: 1vw;
	display: block;
	background-color: black;
	color: white;
	border-radius: 2px;
}

.btn_empty {
	vertical-align: middle;
	width: 10vw;
	height: 2vw;
	margin: 1vw;
	display: block;
	margin-top: 3vw;
	background-color: black; 
	color : white;
	border-radius: 2px;
}

.gallery-container {
	width: inherit;
	height: inherit;
	display: flex;
	flex-direction: row;
	flex-flow: wrap;
	justify-content: space-around;
	background-color: #f1f5fc;
	padding-top: 294px;
}

.block {
	display: table;
	position: relative;
	width: 6vw;
	height: 6vw;
	margin: 1vw;
	border: 10px solid #fff;
	cursor: pointer;
	justify-content: center;
	border-radius: 50%;
	transition: all 0.5s cubic-bezier(0, 0.99, 0, 0.99);
}

.block .block-description {
	display: table-cell;
	position: relative;
	vertical-align: middle;
	text-align: center;
	width: 100% color: #02142b;
	font-size: 0.7em;
	text-transform: uppercase;
	line-height: 1.2em;
	color: white;
	transition: border-radius 0.5s cubic-bezier(0, 0.99, 0, 0.99);
}

.chosen_colors {
	width: 7vw;
	height: 7vw;
	margin: 1vw;
	border: 10px solid #ecf0f1;
	cursor: pointer;
	border-radius: 50%;
}

.color_name {
	text-align: center;
	margin-top: 3vw;
	vertical-align: middle;
	font-size: 0.7em;
	text-transform: uppercase;
	line-height: 1.2em;
	color: white;
	transition: border-radius 0.5s cubic-bezier(0, 0.99, 0, 0.99);
	font-size: 0.7em;
}

.palette_top {
	position: fixed;
	z-index: 50;
	width: 100%;
	background-color: white;
}

.space {
	height: 20px;
}
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="palette_wrap">
		<div class="palette_top">
			<div class="header">
				<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">My
					palette 생성</h1>
			</div>
			<div class="draft-details">
				<a href="">
					<div class="logo"></div>
				</a>
				<form action="saveColors.do" method="post">
					<div class="palette_colors">
						<div class="chosen_colors" style="background-color: rgb()"
							data-index="">
							<div class="color_name"></div>
							<input type="text" name="pl_c1" id="pl_c1" class="colors" />
							<input type="hidden" name="pl_name1" id="pl_name1" />
						</div>
						<div class="chosen_colors" style="background-color: rgb()"
							data-index="">
							<div class="color_name"></div>
							<input type="text" name="pl_c2" id="pl_c2" class="colors" />
							<input type="hidden" name="pl_name2" id="pl_name2" />
						</div>
						<div class="chosen_colors" style="background-color: rgb()"
							data-index="">
							<div class="color_name"></div>
							<input type="text" name="pl_c3" id="pl_c3" class="colors" />
							<input type="hidden" name="pl_name3" id="pl_name3" />
						</div>
						<div class="chosen_colors" style="background-color: rgb()"
							data-index="">
							<div class="color_name"></div>
							<input type="text" name="pl_c4" id="pl_c4" class="colors" />
							<input type="hidden" name="pl_name4" id="pl_name4" />
						</div>
						<div class="chosen_colors" style="background-color: rgb()"
							data-index="">
							<div class="color_name"></div>
							<input type="text" name="pl_c5" id="pl_c5" class="colors" />
							<input type="hidden" name="pl_name5" id="pl_name5" />
						</div>


						<div>
							<button class="btn_empty" type="button" onclick="">비우기</button>
							<c:choose>	
							<c:when test="${info!=null }">
							<button class="btn_create" type="submit">팔레트 생성</button>
							<script type="text/javascript">
							$('.btn_create').click(function () {
								alert('생성 완료!');
							})
								
							</script>
							</c:when>
							<c:otherwise>
							<button class="btn_create" type="button">팔레트 생성</button>
							<script type="text/javascript">
							$('.btn_create').click(function () {
								alert('로그인시 이용 가능합니다');
							})
								
							</script>
							</c:otherwise>
							</c:choose>
							
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="space"></div>

		<div id="colorGallery" class="gallery-container">

			<c:forEach var="color" items="${list}" varStatus="i">
				<div class="block" data-index="${color.c_seq}" onClick=""
					style="background-color: rgb(${color.c_rgb}); color: rgb(${color.c_rgb})">
					<div class="block-description">${color.c_name}</div>
				</div>
			</c:forEach>

		</div>

	</div>
	<script>
		let index = 0;
		var colorList = "";
		function palette(data) {

			console.log(data);

			var palette = $('.chosen_colors')
		}

		$(".block").on(
				"click",
				function() {

					let color = $(this).css('background-color');
					let color_text = $(this).children().text()
					console.log(color_text);

					document.getElementById("pl_c" + (index + 1)).setAttribute(
							"value", color);

					document.getElementById("pl_name" + (index + 1)).setAttribute(
							"value", color_text);
					
					colorDiv = $(".chosen_colors");
					$(colorDiv[index]).css('background-color', color); // == <div class="chosen_colors"style="background-color: rgb()" data-index=""></div>

					colorText = $(".color_name");
					$(colorText[index++]).text(color_text);

					console.log(colorList);
					console.log(colorText);
					console.log()
					if (index >= colorDiv.length) {
						index = 0;
					}

				})

		$(".btn_empty").on(
				"click",
				function() {
					colorDiv = $(".chosen_colors");
					colorText = $(".color_name");
					colorDiv.css('background-color', "white");
					for (var i = 0; i < 5; i++) {
						document.getElementById("pl_c" + (i + 1)).setAttribute(
								"value", "");
						colorText.html("");
					}
					index = 0;
				})
	</script>
</body>

</html>
