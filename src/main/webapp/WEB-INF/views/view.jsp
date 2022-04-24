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
}

.merong {
	width: 500px;
}

.color {
	width: 100px;
	height: 100px;
}

.allin>ul {
	display: flex;
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
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="maain">
		<h1>flask시작</h1>
	<!-- 	<form action="http://f4.project-jupyter.ddns.net:8874/img"
			method="post" enctype="multipart/form-data"> -->
			<div>

				<!-- 				<button type="button" id="file_upload"
					class="genric-btn primary radius exp_button"
					onclick="onclick=document.all.file.click()">사진 업로드</button> -->
				<div>
					<input id="file" type="file" style="border: 1px solid black;"
					 aria-label="Upload" aria-describedby="submitBtn" />
					<div class="select_img" >
						<img src="">
					</div>
				</div> 
				<button type="button" id="submitBtn"
					class="genric-btn primary radius exp_button"  onclick = 'predict()'>적용</button>
				<%--       <input type="hidden" name="user_id" value="${info.mb_email }"> --%>
				<!-- git에서 훔쳐옴 -->
			<!-- 	<div class="input-group">
					<input  type='file' accept='image/*' class="form-control my-2" id="inputGroupFile04"
								aria-describedby="inputGroupFileAddon04" aria-label="Upload" />
					<img src="resources/images/dogsize.PNG" class="img-thumbnail my-2"
						style="display: flex; justify-content: center; align-items: center" />
				</div>
				
			</div> -->
			<!-- 여기까지 -->
		<!-- </form> -->
		<br> <br> 
		<!-- <a href="http://52.79.227.159:8080/final_EV/test.do"><button
				id="backBtn">뒤로가기</button></a> -->
		<div>
			<c:forEach var="listLi" items="${listLi }" varStatus="i">
				<div>
					<img src='${listLi.cho_img}' class="merong" style="margin-left: 100px; margin-top: 50px"> <br> <br>
				</div>
				<div class="allin">
					<ul>
						<li
							style="vertical-align: middle; padding-top: 35px; margin-right: 15px"><div>
								<span>추출한 색상</span>
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
	<!--  {% for result range (0,1)}
        <p>
            <img src="{{ url_for('static', filename=obj.dir) }}" width="175" height="175">
        </p>
    {% endfor %} -->
    </div>
 <!--    
    <script type="text/javascript">
    src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js'></script> -->
	<script type="text/javascript">
	
	/* 	const url = new URL(window.location.href);
		const urlParams = url.searchParams;
		var tr = null;
		tr = urlParams.get('resultData');
		console.log(tr); */
		
		
		$("#file")
				.change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;
								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(500);
								}
								reader.readAsDataURL(this.files[0]);
							}
						});
		
		
		 function predict() {
		    	
		    	var form = $('#file')[0].files[0];
		    	console.log(form);
				var formData = new FormData();
				formData.append('img', form);
		    	$.ajax({
		            url : "http://f4.project-jupyter.ddns.net:8874/img",
		            type : "POST",
		            enctype: 'multipart/form-data',
		            data : formData,
		            processData: false,
			        contentType: false,
			        cache: false,
		            success : function(result_f){
		            	console.log(result_f['cl1']);
		            	console.log(result_f['cl2']);
		            	
		            	/* if (result['err']==0){
		            		$('#ani_back_len').val(result['back']);
		                    $('#ani_neck_len').val(result['neck']);
		                    $('#ani_chest_len').val(result['chest']);
		            	} else if (result['err']==1) {
		            		alert("카드 인식 실패");
		            	} else {
		            		alert("강아지 인식 실패")
		            	}
		                 */
		            },
		            error : function(){
		            	alert("error!"); 
		            }
		        })
			};
	</script>

</body>
</html>