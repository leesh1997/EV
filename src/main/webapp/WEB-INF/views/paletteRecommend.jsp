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
@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body{
    padding: 0;
    margin: 0;
   	font-family: 'NanumSquareRound';
 /*    overflow: hidden; */
}
.palette_wrap {
	margin-left: 100px;
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

#paletteGallery {
	justify-content: center;
}

.chosen_palette {
	width: 7vw;
	height: 7vw;
	margin: 1vw;
	border: 10px solid #ecf0f1;
	cursor: pointer;
	border-radius: 50%;
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
.names {
	display: none;
}

.gallery-container {
	width: inherit;
	height: inherit;
	display: flex;
	flex-direction: row;
	flex-flow: wrap;
	justify-content: flex-start;
	background-color: #f1f5fc;
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

.select_palette {
	display: flex;
	flex-direction: row;
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
	font-family: 'NanumSquareRound';
	font-size: 16px;
    font-weight: bold;
}

.btn_empty {
	vertical-align: middle;
	width: 10vw;
	height: 2vw;
	margin: 1vw;
	display: block;
	margin-top: 3vw;
	background-color: black;
	color: white;
	border-radius: 2px;
	font-family: 'NanumSquareRound';
	font-size: 16px;
    font-weight: bold;
}

.block {
	display: table;
	position: relative;
	vertical-align: middle;
	width: 4vw;
	height: 4vw;
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

input[type="radio"] {
	position: relative;
	/* vertical-align: bottom; */
	margin-top: 3.2vw;
	margin-left: 3vw;
}

.palette_top {
	position: fixed;
	z-index: 50;
	width: 100%;
	background-color: white;
}

.space {
	height: 310px;
}
</style>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="palette_wrap">
		<div class="palette_top">
			<div class="header">
				<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">Palette
					선택</h1>
			</div>
			<div class="draft-details">
				<a href="">
					<div class="logo"></div>
				</a>
				<form action="savePalette.do" method="post">
					<div class="palette_colors" data-index="">
						<div id="p1" class="chosen_palette"
							style="background-color: rgb()">
							<div class="color_name" id="text1"></div>
							<input type="text" name="pl_c1" id="pl_c1" class="colors" />
							<input type="text" name="pl_name1" id="pl_name1" class="names" value="">
						</div>
						<div id="p2" class="chosen_palette"
							style="background-color: rgb()">
							<div class="color_name" id="text2"></div>
							<input type="text" name="pl_c2" id="pl_c2" class="colors" />
							<input type="text" name="pl_name2" id="pl_name2" class="names" value="">
						</div>
						<div id="p3" class="chosen_palette"
							style="background-color: rgb()">
							<div class="color_name" id="text3"></div>
							<input type="text" name="pl_c3" id="pl_c3" class="colors" />
							<input type="text" name="pl_name3" id="pl_name3" class="names" value="">
						</div>
						<div id="p4" class="chosen_palette"
							style="background-color: rgb()">
							<div class="color_name" id="text4"></div>
							<input type="text" name="pl_c4" id="pl_c4" class="colors" />
							<input type="text" name="pl_name4" id="pl_name4" class="names" value="">
						</div>
						<div id="p5" class="chosen_palette"
							style="background-color: rgb()" >
							<div class="color_name" id="text5"></div>
							<input type="text" name="pl_c5" id="pl_c5" class="colors" />
							<input type="text" name="pl_name5" id="pl_name5" class="names" value="">
						</div>


						<div>
							<button class="btn_empty" type="button" onclick="">비우기</button>
							<c:choose>	
							<c:when test="${info!=null }">
							<button class="btn_create" type="submit">팔레트 저장</button>
							<script type="text/javascript">
							$('.btn_create').click(function () {
								alert('저장 완료!');
							})
								
							</script>
							</c:when>
							<c:otherwise>
							<button class="btn_create" type="button">팔레트 저장</button>
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

		<div id="paletteGallery" class="gallery-container">
			<c:forEach var="colors" items="${list}" varStatus="i" begin="0"
				end="39">
				<div class="select_palette" data-index="${colors.i_seq}">
					<input type="radio" class="selectedPalette" name="selectedPalette"
						>
					<div id="rgb1" class="block" 
						style="background-color: rgb(${colors.i_rgb1}); color: rgb(${colors.i_rgb1}">
						<div id="cl_name1" class="block-description">${colors.i_colorname1}</div>
					</div>
					<div id="rgb2" class="block" 
						style="background-color: rgb(${colors.i_rgb2}); color: rgb(${colors.i_rgb2}">
						<div id="cl_name2" class="block-description">${colors.i_colorname2}</div>
					</div>
					<div id="rgb3" class="block" 
						style="background-color: rgb(${colors.i_rgb3}); color: rgb(${colors.i_rgb3}">
						<div id="cl_name3" class="block-description">${colors.i_colorname3}</div>
					</div>
					<div id="rgb4" class="block" 
						style="background-color: rgb(${colors.i_rgb4}); color: rgb(${colors.i_rgb4}">
						<div id="cl_name4" class="block-description">${colors.i_colorname4}</div>
					</div>
					<div id="rgb5" class="block" 
						style="background-color: rgb(${colors.i_rgb5}); color: rgb(${colors.i_rgb5}">
						<div id="cl_name5" class="block-description">${colors.i_colorname5}</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<script>
	




		/* 팔레트 버튼 선택 */
		
		$(".selectedPalette").on("click", function() {
			
			var colors = $(this).nextAll('.block') 
			var palette = [];
			var colorText = $(this).nextAll('.block').children('.block-description')
			var colorNames = [];
			for(var i = 0; i < colors.length; i++){
				palette.push($(colors[i]).css('background-color')) // 블락 클래스 배경 rgb 값 담기
				colorNames.push($(colorText[i]).text()) // 블락 배경 색 이름 텍스트 담기
			}
			
			console.log(palette);
			console.log(colorNames);
			
		/* 선택한 팔레트 전송 색 및 이름 표시 */
		for(var i = 0; i < 5; i++){
			palette_in = $("#p" + (i+1));
			colorNames_in = $("#text" + (i+1))
		 	$(palette_in).css("background-color", palette[i]);
		 	$(colorNames_in).text(colorNames[i]);
		 	palette_data = $("#pl_c"+(i+1));
		 	$(palette_data).val(palette[i]);
		 	palette_name = $("#pl_name" + (i+1))
		 	$(palette_name).val(colorNames[i]);
		 	/* document.getElementById("pl_c" + (i + 1)).setAttribute(
					"value", colors.css('background-color')); */
		}
		
		
	

		})

		/* 비우기 */
		$(".btn_empty").on(
				"click",
				function() {
					colorPal = $(".chosen_palette");
					colorText = $(".color_name");
					colorPal.css('background-color', "white");
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