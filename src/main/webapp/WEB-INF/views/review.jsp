<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="review_yeslogin">
	<form action="WriteReview.do"
		method="post" enctype="multipart/form-data">
		<!-- 	<textarea class="texttitle" name="title" placeholder="제목을 작성해주세요"></textarea> -->
		<input type="text" class="texttitle" name="title"
			placeholder="제목을 작성해주세요"></input>
		<textarea class="textin" name="content" placeholder="리뷰를 작성해주세요"></textarea>
		<!-- <input type="text" class="textin" name ="content" placeholder="리뷰를 작성해주세요"></input> -->
		<input type="file" name="reviewImg" value="이미지 첨부"
			style="width: 75%; margin-left: 10%;">
		<!-- <input type="textbox" class = "textin" value="  리뷰가들어갑니다^^"> -->
		<!-- <input class="textinbtn" type="submit"
			style="height: 60px; width: 75px; font-size: 30px;"></input> -->
		<button class="textinbtn" type="submit" style="height: 60px; width: 75px; font-size: 30px;">작성</button>
	</form>
</div>
</body>
</html>