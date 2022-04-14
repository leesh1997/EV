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
	width: 1200px;
}

.board_service {
	display: flex;
	justify-content: flex-end;
}


.board_list_btn {
	padding: 15px;
}

.gallery_writing_form_wrap {
	display: flex;
	flex-direction: column;
	margin-left: 100px;
	justify-content: center;
	width: 100%;
	font-size: 11px;
}

.gallery_writing_form {
	display: flex;
	justify-content: flex-start;
	margin: 5px;
	padding: 10px;
	margin: 5px;
	margin: 5px;
}

.blocks {
	flex-direction: row;
	width: 100px;
}

.title_box {
	width: 800px;
}

.text_box {
	width: 800px;
}

.insert_btn, .img_up_btn, .board_list_btn2{
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
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
				<div class="board_list_btn">
					<a href="board.do"><button class="board_list_btn2">목록 보기</button></a>
				</div>
			</div>
		</div>
		<hr id="line" />

		<form action="boardInsert.do" method="post">
			<div class="gallery_writing_form_wrap">
				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="title">제목</label>
					</div>
					<div class="blocks">
						<input class="title_box" type="text" class="input_text"
							name="title" id="title">
					</div>
				</div>

				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="content">내용</label>
					</div>
					<div class="blocks">
						<textarea class="text_box" rows="10" class="input_text"
							name="content" id="content"></textarea>
					</div>
				</div>
				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="img_up">파일첨부</label>
					</div>
					<div class="blocks">
					
						<button class="img_up_btn" name="img_up" id="img_up">이미지
							업로드</button>
							
					</div>
				</div>
				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="insert_btn"></label>
					</div>
					<div class="blocks">
						<button class="insert_btn" name="insert_btn" id="insert_btn">작성
							완료</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>