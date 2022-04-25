<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.maain {
	margin-left: 130px;
	max-height: auto;
	position: relative;
	z-index: 50;
	display: flex;
	margin-top: -90px;
    margin-left: 255px;
}
}

.merong {
	width: 700px;
}

.allin>ul {
	display: flex;
	margin: auto;
}

#submitBtn {
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
	margin-left: 570px;
}

#backBtn {
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
	margin-left: 550px;
}

input[type="flie"] {
	background-color: red;
}

#viewimg {
	 height: 675px;
    width: 700px;
    background-color: rgb(247, 248, 250);
    border: 1px dashed #c1c1c1;
    margin-top: 10px;
}
.allin{
width: 700px;
height: 150px;
	border: 1px dashed rgb(218, 220, 224);
	margin-left: 100px;
}
.color {
    width: 135px;
    height: 120px;
    margin-top: 15px;
}
img{
width: 100%;
    height: 500px;
}

#submitBtn {
    background-color: black;
    color: white;
    height: 24px;
    border-radius: 4px;
    font-size: 12px;
    margin-left: 0px;
    margin-top: 0px;
    margin-bottom: 10px;
    width: 75px;
}
.viewmain{
margin-top: 80px;
}

.result{
margin-top: 130px;
margin-left: -40px;
}
.viewbtn{
display: flex;
flex-direction: row;
}

/* .viewbtn input[type="file"]{
position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}
.viewbtn label {
     background-color: black;
    color: white;
    height: 30px;
    border-radius: 4px;
    font-size: 12px;
    margin-left: 0px;
    margin-top: 5px;
    margin-bottom: 10px;
    width: 75px;
} */
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div>
	 <h1 style="    margin-left: 137px;
    margin-top: 0px;
    padding-top: 18px;">Image Palette</h1> 
	<div class="maain">
		
				<div class="viewmain">		
		<form action="http://f4.project-jupyter.ddns.net:8874/img"
			method="post" enctype="multipart/form-data">

			<!-- 				<button type="button" id="file_upload"
					class="genric-btn primary radius exp_button"
					onclick="onclick=document.all.file.click()">사진 업로드</button> -->
						<p style="font-weight: bold; font-size:20px;">색상 추출을 원하는 사진을 올려주세요.</p>
			
			
				<div class="viewbtn">
					<input id="file" type="file" name="img"/>
				 <button type="submit" id="submitBtn"
					class="genric-btn primary radius exp_button">색상 추출</button>
				</div>
					
				<div id="viewimg">
					<div class="select_img">
						<img src="" style=" height:675px; width:100%;">
					</div>


				</div>
				
				<!-- 	<button type="button" id="submitBtn"
					class="genric-btn primary radius exp_button" onclick='predict()'>색상
					추출</button> -->

				<%--       <input type="hidden" name="user_id" value="${info.mb_email }"> --%>
				<!-- git에서 훔쳐옴 -->
				<!-- 	<div class="input-group">
											<input  type='file' accept='image/*' class="form-control my-2" id="inputGroupFile04"
														aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
											<img src="resources/images/dogsize.PNG" class="img-thumbnail my-2"
												style="display: flex; justify-content: center; align-items: center" />
										</div>-->
			</form>
			</div>
			<!-- 여기까지 -->

		



		<div class="result">
			<c:forEach var="listLi" items="${listLi }" varStatus="i">
				<div>
					<img src='${listLi.cho_img}' class="merong"
						style="margin-left: 100px; margin-top: 60px; width: 700px;"> <br> <br>
				</div>
				<div class="allin">
					<ul>
						<li
							style="vertical-align: middle; padding-top: 35px; margin-right: 15px"><div>

							</div></li>
						<li><div class="color"
								style="background-color: rgb(${listLi.cho_cl1})"></div></li>
						<li><div class="color"
								style="background-color: rgb(${listLi.cho_cl2})"></div></li>
						<li><div class="color"
								style="background-color: rgb(${listLi.cho_cl3})"></div></li>
						<li><div class="color"
								style="background-color: rgb(${listLi.cho_cl4})"></div></li>
						<li><div class="color"
								style="background-color: rgb(${listLi.cho_cl5})"></div></li>

					</ul>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	<!--  {% for result range (0,1)}
        <p>
            <img src="{{ url_for('static', filename=obj.dir) }}" width="175" height="175">
        </p>
    {% endfor %} -->
		<!--    
    src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script> -->
    
		<script type="text/javascript">
			/* 	const url = new URL(window.location.href);
				const urlParams = url.searchParams;
				var tr = null;
				tr = urlParams.get('resultData');
				console.log(tr); */

			$("#file").change(
					function() {
						if (this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src",
										data.target.result).width(700);
							}
							reader.readAsDataURL(this.files[0]);
						}
					});

			
		</script>
</body>
</html>