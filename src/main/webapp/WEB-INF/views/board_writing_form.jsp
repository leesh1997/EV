<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
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

.insert_btn, .img_up_btn, .board_list_btn2 {
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
					<a href="board.do"><button class="board_list_btn2">목록
							보기</button></a>
				</div>
			</div>
		</div>
		<hr id="line" />
		<!--  enctype="multipart/form-data" -->
		<form action="boardInsert.do" name="form1" id="form1" method="post"
			enctype="multipart/form-data">
			<div class="gallery_writing_form_wrap">

				<div class="gallery_writing_form">
					<!-- <div class="blocks">
						<label for="title">작성자</label>
					</div> -->
					<div class="blocks">
						<input type="hidden" class="title_box" class="input_text"
							name="b_title" id="writer" value="${sessionScope.infoNick}">
					</div>
				</div>


				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="title">제목</label>
					</div>
					<div class="blocks">
						<input class="title_box" type="text" class="input_text"
							name="b_title" id="title">
					</div>
				</div>

				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="content">내용</label>
					</div>
					<div class="blocks">
						<textarea class="text_box" rows="10" class="input_text"
							name="b_content" id="content"></textarea>
					</div>
				</div>

				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="img_up">파일첨부</label> <input type="file" name="b_file"
							style="margin-left: 100px" multiple value="이미지 첨부" id="b_file"/><br /> <br />
					</div>
					<div class="blocks"></div>
				</div>
				<div class="gallery_writing_form">
					<div class="blocks">
						<label for="insert_btn"></label>
					</div>
					<div class="blocks">
						<button type="button" class="insert_btn" id="insert_btn">
							작성 완료</button>
					</div>
				</div>

			</div>
		</form>
	</div>

</body>
<script>
	$(document).ready(function() {
		$("#insert_btn").click(function() {
			var title = $("#title").val();
			var content = $("#content").val();
			var writer = $("#writer").val();
			if (title == "") {
				alert("제목을 입력하세요");
				document.form1.title.focus();
				return;
			}
			if (content == "") {
				alert("내용을 입력하세요");
				document.form1.content.focus();
				return;
			}
			// 폼에 입력한 데이터를 서버로 전송
			document.form1.submit();
		});
	});
	
/* 	$("#b_file").on("click", function(){
		var index = $("#b_file").index(this);
		if(filecheck[index]==0){
			$("input[name=b_file]").eq(index).click()
		}
		else{
			if(confirm("이미지를 삭제하시겠습니까?")){
				$(this).children("img").removeAttr("src");
				$(this).children("img").css("display","none");
				$("input[name=b_file]").eq(index).val("");
				filecheck[index]=0;
			}
		}
	})
	
	//이미지 첨부되면 미리보기 뜨도록
	$("input[name=b_file]").on("input",function(){
		var index = $("input[name=b_file]").index(this);
		
		if(this.files[0]){
			console.log("done"+index);
			filecheck[index]=1;
			console.log(filecheck[index]);
			var reader = new FileReader();
			reader.readAsDataURL(this.files[0]);
			reader.onload = function(e){
				$("#b_file").eq(index).children("img").attr("src", e.target.result);
				$("#b_file").eq(index).children("img").css("display", "block");
			}
		}
	}) */
</script>
</html>