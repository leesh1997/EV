<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.board_wrap {
	margin-left: 100px;
	position: relative;
	z-index: 50;
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

.board_list_btn {
	padding: 15px;
}

.gallery_writing_form_wrap {
	margin-left: 100px;
	justify-content: center;
	flex-direction: column;
}

.gallery_writing_form {
	margin: 5px;
	padding: 10px;
}

.blocks {
	display: inline-block;
	width: 100%;
}
</style>
</head>
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
					<input type="text">
					<button>검색</button>
				</div>
				<div class="board_list_btn">
					<a href="board.do"><button>목록 보기</button></a>
				</div>
			</div>
		</div>
		<hr id="line" />

		<form action="boardInsert.do" method="post">
			<div class="gallery_writing_form_wrap">
				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="title">title</label>
					</div>
					<div class="blocks">
						<input type="text" class="input_text" name="title" id="title">
					</div>
				</div>

				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="content">contents</label>
					</div>
					<div class="blocks">
						<textarea rows="10" class="input_text" name="content" id="content"></textarea>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>