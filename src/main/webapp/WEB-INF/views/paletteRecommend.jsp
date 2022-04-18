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

input[type="radio" ] {
	position: relative;
	/* vertical-align: bottom; */
	margin-top: 3.2vw;
	margin-left: 3vw;
}
</style>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="palette_wrap">
		<div class="header">
			<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">Palette
				select</h1>
		</div>
		<div class="draft-details">
			<a href="">
				<div class="logo"></div>
			</a>
			<form action="saveColors.do" method="post">
				<div class="palette_colors">
					<div class="chosen_palette" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c1" id="pl_c1" class="colors" />
					</div>
					<div class="chosen_palette" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c2" id="pl_c2" class="colors" />
					</div>
					<div class="chosen_palette" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c3" id="pl_c3" class="colors" />
					</div>
					<div class="chosen_palette" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c4" id="pl_c4" class="colors" />
					</div>
					<div class="chosen_palette" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c5" id="pl_c5" class="colors" />
					</div>


					<div>
						<button class="btn_empty" type="button" onclick="">비우기</button>
						<button class="btn_create" type="submit">팔레트 선택</button>
					</div>
				</div>
			</form>
		</div>
		<div id="paletteGallery" class="gallery-container">
			<c:forEach var="colors" items="${list}" varStatus="i" begin="1"
				end="40">
				<div class="select_palette">
					<input type="radio" class="selectedPalette" name="selectedPalette" onClick="">
					<div id="rgb1" class="block" data-index="${colors.i_seq}"
						style="background-color: rgb(${colors.i_rgb1}); color: rgb(${colors.i_rgb1}">
						<div id="cl_name1" class="block-description">${colors.i_colorname1}</div>
					</div>
					<div id="rgb2" class="block" data-index="${colors.i_seq}"
						style="background-color: rgb(${colors.i_rgb2}); color: rgb(${colors.i_rgb2}">
						<div id="cl_name2" class="block-description">${colors.i_colorname2}</div>
					</div>
					<div id="rgb3" class="block" data-index="${colors.i_seq}"
						style="background-color: rgb(${colors.i_rgb3}); color: rgb(${colors.i_rgb3}">
						<div id="cl_name3" class="block-description">${colors.i_colorname3}</div>
					</div>
					<div id="rgb4" class="block" data-index="${colors.i_seq}"
						style="background-color: rgb(${colors.i_rgb4}); color: rgb(${colors.i_rgb4}">
						<div id="cl_name4" class="block-description">${colors.i_colorname4}</div>
					</div>
					<div id="rgb5" class="block" data-index="${colors.i_seq}"
						style="background-color: rgb(${colors.i_rgb5}); color: rgb(${colors.i_rgb5}">
						<div id="cl_name5" class="block-description">${colors.i_colorname5}</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<script>
	
	
	let index = 0;


	function palette(data) {

		

		
		console.log(palette1);
	}
	
	$(".selectedPalette").on(
	
			"click",
			function() {
				
			
				var palette = $(".block").css("background-color");
				var palette_text = $(".block-description").text();
				console.log(palette);
				console.log(palette_text); 
				for(var i = 0; i < 40; i++){
				colorDiv = $(".chosen_palette");
				$(colorDiv).css('background-color', palette);
				
				paletteText = $(".color_name");
				$(paletteText).text(palette_text);
				}
				
				
				
			}
	
	)
	
	
	</script>
</body>
</html>