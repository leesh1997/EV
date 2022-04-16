<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.chosen_colors {
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

input[type="checkbox" i] {
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
					<div class="chosen_colors" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c1" id="pl_c1" class="colors" />
					</div>
					<div class="chosen_colors" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c2" id="pl_c2" class="colors" />
					</div>
					<div class="chosen_colors" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c3" id="pl_c3" class="colors" />
					</div>
					<div class="chosen_colors" style="background-color: rgb()"
						data-index="">
						<div class="color_name"></div>
						<input type="text" name="pl_c4" id="pl_c4" class="colors" />
					</div>
					<div class="chosen_colors" style="background-color: rgb()"
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
		<div id="colorGallery" class="gallery-container">
			<div class="select_palette">
				<input type="checkbox" class="check_palette">
				<div class="block" data-index="77"
					style="background-color: rgb(213, 152, 141); color: rgb(213, 152, 141)">
					<div class="block-description">muted midtone red</div>
				</div>
				<div class="block" data-index="77"
					style="background-color: rgb(213, 152, 141); color: rgb(213, 152, 141)">
					<div class="block-description">muted midtone red</div>
				</div>
				<div class="block" data-index="77"
					style="background-color: rgb(213, 152, 141); color: rgb(213, 152, 141)">
					<div class="block-description">muted midtone red</div>
				</div>
				<div class="block" data-index="77"
					style="background-color: rgb(213, 152, 141); color: rgb(213, 152, 141)">
					<div class="block-description">muted midtone red</div>
				</div>
				<div class="block" data-index="77"
					style="background-color: rgb(213, 152, 141); color: rgb(213, 152, 141)">
					<div class="block-description">muted midtone red</div>
				</div>
			</div>
		</div>




	</div>
</body>
</html>