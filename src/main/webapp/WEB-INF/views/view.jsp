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
input[type="flie"]{
	background-color: red;
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
			<p>색상 추출 원하는 사진 올려~!</p>
			<div>
			<table style="border: solid 2px black;">
				<tr>
				<td> <input id="file" type="file" 
					aria-label="Upload" aria-describedby="submitBtn" />
				
				<div class="select_img">
					<img src="">
				</div>
				</td>
				</tr>
			</table>
		


				<!-- <div class="css-zjik7 e15j4pam2">
					<ol class="e15j4pam1 css-qydlkf enz0n5n1">
						<li class="css-0 enz0n5n0"></li>
					</ol>
					<ol class="e15j4pam0 css-jc3qwa eg53srj2">
						<li class="css-0 eg53srj1"><div class="css-1g1f4b0 e19p9qev2">
								<div class="css-65dos4 e1peeabv2">
									<div class="css-18b8wwh e1peeabv1">
										<button class="css-1por7ps em8wpqo4" type="button">
											<div class="css-13oxvuz em8wpqo3">
												<svg width="48" height="48" viewBox="0 0 48 48"
													fill="currentColor" preserveAspectRatio="xMidYMid meet"
													class="css-hcf77b em8wpqo2">
													<path
														d="M11.952 9.778l2.397-5.994A1.778 1.778 0 0 1 16 2.667h16c.727 0 1.38.442 1.65 1.117l2.398 5.994h10.174c.982 0 1.778.796 1.778 1.778v32c0 .981-.796 1.777-1.778 1.777H1.778A1.778 1.778 0 0 1 0 43.556v-32c0-.982.796-1.778 1.778-1.778h10.174zM24 38c6.075 0 11-4.925 11-11s-4.925-11-11-11-11 4.925-11 11 4.925 11 11 11z"></path></svg>
												<span class="css-zwjalz em8wpqo1">사진 올리기</span><span
													class="css-3p8e2o em8wpqo0">(*최대 10장까지)</span>
											</div>
										</button>
									</div>
									<div class="css-1nzh9nk e1peeabv0">
										<div class="css-bwau1j er05vzw3">
											<div class="input-group select-input css-1fz5nch er05vzw2">
												<span
													class="select-input__icon"><svg class="icon"
														width="10" height="10" preserveAspectRatio="xMidYMid meet"
														style="fill: currentcolor;">
														<path fill-rule="evenodd" d="M0 3l5 5 5-5z"></path></svg></span>
											</div>
											<textarea class="_3ASDR _1qwAY css-y8rznn er05vzw1"
												field="[object Object]" name="description"
												placeholder="사진에 대해 설명해주세요." rows="6"
												style="overflow: hidden; overflow-wrap: break-word; height: 145px;"></textarea>
											<div class="keyword-input css-7oy2q er05vzw0">
												<div class="keyword-input__input-item"
													style="display: inline-block;">
													<input class="keyword-input__input-item__input"
														placeholder="키워드" value=""
														style="box-sizing: content-box; width: 43px;">
													<div
														style="position: absolute; top: 0px; left: 0px; visibility: hidden; height: 0px; overflow: scroll; white-space: pre; font-size: 15px; font-family: OhouseSans,&amp; quot; Noto Sans KR&amp;quot; , &amp; quot; Apple SD Gothic Neo&amp;quot; , &amp; quot; 맑은 고딕&amp;quot; , &amp; quot; Malgun Gothic&amp;quot; , sans-serif; font-weight: 400; font-style: normal; letter-spacing: normal; text-transform: none;"></div>
													<div
														style="position: absolute; top: 0px; left: 0px; visibility: hidden; height: 0px; overflow: scroll; white-space: pre; font-size: 15px; font-family: OhouseSans,&amp; quot; Noto Sans KR&amp;quot; , &amp; quot; Apple SD Gothic Neo&amp;quot; , &amp; quot; 맑은 고딕&amp;quot; , &amp; quot; Malgun Gothic&amp;quot; , sans-serif; font-weight: 400; font-style: normal; letter-spacing: normal; text-transform: none;">키워드</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div></li>
					</ol>
				</div>
 -->

			</div>

			<button type="button" id="submitBtn"
				class="genric-btn primary radius exp_button" onclick='predict()'>적용</button>

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

			<!-- 팔레트 -->
			<!-- <a href="http://52.79.227.159:8080/final_EV/test.do"><button
				id="backBtn">뒤로가기</button></a> -->
			<%-- 	<div>
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
		</div> --%>
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
				enctype : 'multipart/form-data',
				data : formData,
				processData : false,
				contentType : false,
				cache : false,
				success : function(result_f) {
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
				error : function() {
					alert("error!");
				}
			})
		};
	</script>

</body>
</html>