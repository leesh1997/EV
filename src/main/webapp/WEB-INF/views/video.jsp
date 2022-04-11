<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영상 페이지</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
 .box1 {
  margin-top: 50px; margin-left: 150px; margin-right: 50px; max-width:40%}
 .box2 {
  display:inline-block; margin-left:500px;}  
</style>

</head>
<body>
     <div class="box1"></div>
     <div class="box2"></div>
</body>

<body>
	<jsp:include page = "side_topbar.jsp"></jsp:include>
<div style="margin-top: 50px; margin-left: 150px">
	<h3>인테리어 영상</h3>
</div>
<div class="container-md main_content">

	<div class="box1" >
		<c:forEach var="vd" items="${list}" begin="1" end="5">
			<div style="position: relative; height:0; padding-bottom: 56.25%;">
				<iframe width="460" height="260" src="${vd.v_url}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; width:100%; height:100%;"></iframe>
			</div>
			<br>
		</c:forEach>
	</div>
	
	<div class="box2" style="margin-top: 50px; margin-left: 150px; margin-right: 50px; max-width:40%">
		<h1>제목 테스트</h1>
	</div>
	
	
	
	<div style="margin-top: 50px; margin-left: 150px; margin-right: 50px; max-width:40%; align-content:center">	
			<span onclick="alert('이전 페이지가 없습니다.');">이전</span>			
		<c:set var = "page" value = "${(param.p==null)? 1: param.p}"/>
		<c:set var ="startNum" value = "${page-(page-1)%5}"/>
		<span>
			<c:forEach var = "i" begin= "0" end = "4">
				<a href="?p=${startNum+i}&t=&q=" >${startNum+i}</a>
			</c:forEach>
		</span>		
			<span onclick="alert('다음 페이지가 없습니다.');">다음</span>			
	</div>

</div>
</body>
</html>