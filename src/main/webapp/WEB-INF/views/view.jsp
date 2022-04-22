<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.maain{
	margin-left: 100px;
	max-height: auto;
	position: relative;
	z-index: 50;
	
}
.merong{
	width: 500px;
	
}
.color{
	width: 100px;
	height: 100px;
}
.allin>ul{
display:flex;
}

</style>
</head>
<body>
<jsp:include page = "side_topbar.jsp"></jsp:include>
	
	<div class="maain">
	
		<a href="http://localhost:8081/ev/test.do">뒤로가기</a>
		<div>
		<div><img src="resources/img/casa1.png" class="merong"></div>
		<div class= "allin">
			<ul>
				<li><div class="color" style="background-color: blue">색상1</div></li>
				<li><div class="color" style="background-color: purple">색상1</div></li>
				<li><div class="color" style="background-color: violet">색상1</div></li>
				<li><div class="color" style="background-color: skyblue">색상1</div></li>
				<li><div class="color" style="background-color: royalblue">색상1</div></li>
				
			</ul>
		</div>
		</div>
	</div>
	<!--  {% for result range (0,1)}
        <p>
            <img src="{{ url_for('static', filename=obj.dir) }}" width="175" height="175">
        </p>
    {% endfor %} -->
	
</body>
</html>