<%@page import="kr.ev.model.BoardVO"%>
<%@page import="com.mysql.cj.Session"%>
<%@page import="kr.ev.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EV Board</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
body{
    padding: 0;
    margin: 0;
   	font-family: 'NanumSquareRound';
 /*    overflow: hidden; */
}
.board_wrap {
	margin-left: 100px;
	position: relative;
	z-index: 50;
}

#line {
	margin-left: 20px;
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

.board_btn_writingform {
	padding: 15px;
}

.board_list_gallery {
	justify-content: center;
	margin-left: -20px;
	padding: 10px;
}

.board_list_gallery ul {
	width: 100%;
	display: inline-block;
	margin-right: 20px;
	margin-left: 20px;
}

.board_list_gallery ul li {
	display: inline-block;
	position: relative;
	font-size: 18px;
	text-align: center;
	padding: 0 20px 80px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

button {
	background-color: black;
	color: white;
	height: 25px;
	border-radius: 15px;
	font-size: 10px;
}

.popupModalImg {
	padding-bottom: 20px;
}

.popupModalImg {
	position: relative;
	margin-bottom: 15px;
	z-index: 50;
	height: 350.7px;
}

.img_modal_popup.reveal {
	display: flex;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	justify-content: center;
	align-items: center;
	z-index: 9999999
}

.img_modal_popup .img-wrapper {
	position: relative;
	width: 60%;
	padding-bottom: 45%;
	margin-right: 150px;
	z-index: 500
}

.img_modal_popup.reveal .img_modal_popup-closer {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .9);
	z-index: 300
}

.img-wrapper {
	width: 400px;
	height: 300px;
	margin-left: 150px;
	margin-top: 100px;
}

.img-wrapper>img {
	width: 800px;
	height: 600px;
	float: right;
	margin-right: 200px;
	margin-top: 30px;
}

.closeBtn {
	font-size: 20px;
	float: right;
	margin-top: 30px;
	margin-right: 45px;
	/* font-weight: bold; */
	background: none;
}

.contentTable {
	color: white;
	float: right;
	border: 2px solid white;
	width: 650px;
	height: 600px;
	margin-top: 145px;
	margin-right: 130px;
	table-layout: fixed;
	background: black;
}

.contentTable>tbody>tr>td {
	text-align: center;
	width: 100%;
}

.title {
	height: 70px;
	font-size: 23px;
}

.writer {
	height: 30px;
	font-size: 13px;
}
#content2>td{
    padding-right: 70px;
    padding-left: 70px;
    font-size: 15px;
    text-align:left;
    padding-bottom: 280px;
}
#nick2 td:nth-child(1),#date2 td:nth-child(1){
text-align:left; 
padding-left:70px;
}


</style>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<div class="board_wrap">
		<div class="header">
			<h1 style="margin-top: 0; margin-left: 50px; padding-top: 20px">EV
				게시판</h1>
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
				<c:choose>
					<c:when test="${info != null}">
						<div class="board_btn_writingform">
							<a href="board_writing_form.do"><button>게시물 작성</button></a>
						</div>
					</c:when>
					<c:when test="${info == null}">
						<div class="board_btn_writingform">
							<a id="btn22" href="#"><button>게시물 작성</button></a>
						</div>
						<script>
							$("#btn22").click(function() {
								alert("로그인 후 이용해주세요");
								location.href = "login.do";
							});
						</script>
					</c:when>
				</c:choose>
			</div>
		</div>
		<hr id="line" />

		<div class="board_list_gallery">
			<ul style="margin: auto;">
				<c:forEach var="imgs" items="${list}" varStatus="i">
					<div class="col-lg-4 popupModalImg">
						<li style="width: 100%; margin-top: -15px;">
							<div class="gallery_container">
								<div class="board_img" data-index="${imgs.b_seq }">
									<input type="hidden" id="hiddenSeq" value="${imgs.b_seq }"> <a
										data-img="${imgs.b_file}" data-seq="${imgs.b_seq }" data-title="${imgs.b_title}" data-nick="${imgs.m_nick}" data-date="${imgs.b_date}" data-content="${imgs.b_content}" data-cnt="${imgs.b_cnt}"> <img src="${imgs.b_file}"
										width="100%" height="300" class="gallery_items">
									</a>
								</div>
								<div class="gallery_info_cont">

									<div class="board_tit" style="margin-top: 5px;">
										<a href="#"> <strong>${imgs.b_title}</strong>
										</a>
										<p style="font-size: 15px;">${imgs.m_nick}</p>
									</div>
								</div>
								<!-- //gallery_info_cont -->
							</div> <!-- //gallery_cont -->
						</li>

					</div>

				</c:forEach>
			</ul>
			<div class="img_modal_popup" style="margin-left: 150px">
			 	<div class="img_modal_popup-closer">
					 <button class="closeBtn">X</button>
					<div class="content">

						<table class="contentTable">
							<tr class="title" id="title2">
								<td colspan="2"></td>
							</tr>
							<tr class="writer" id="nick2">
								<td colspan="2" style="font-weight: bold;">작성자 : </td>
							</tr>
							<tr class="writer" id="date2">
								<td colspan="2" style="font-weight: bold;">작성일 : </td>
						
							</tr>
							<!-- <tr class="writer" id="cnt">
								<td style="font-weight: bold;width: 140px;">조회수</td>
								<td style="float:left;"></td>
							</tr> -->
							<tr id="content2">
								<td colspan="2"></td>
							</tr>
						</table>
					</div> 
					
				</div> 
				
			</div>


		</div>

	</div>
	<script>
	$(document).ready(function () {
		$('.contentTable').hide();
	})
	var cnt = 1;
		$(".board_img a").click( 
				function() {
					$('.contentTable').show();
					$(".img_modal_popup").addClass("reveal"), $(
							".img_modal_popup .img-wrapper").remove(), $(
							".img_modal_popup").append(
							"<div class='img-wrapper' style='width:300px;'><img src="
									+ $(this).data("img") + "></div> "
									),
									
								
									$("#title2 td:nth-child(1)").append($(this).data("title")),
									$("#nick2 td:nth-child(1)").append($(this).data("nick")),
									$("#date2 td:nth-child(1)").append($(this).data("date")),
									$("#content2 td:nth-child(1)").append($(this).data("content"))
						
				}), $(".img_modal_popup-closer").click(
				function() {
					$('.contentTable').hide();
					$(".img_modal_popup .img-wrapper").remove(), $(
							".img_modal_popup").removeClass("reveal"),
							$("#title2 td:nth-child(1), #nick2 td:nth-child(1), #date2 td:nth-child(1), #content2 td:nth-child(1),#cnt td:nth-child(2)").detach(),
							$("#title2").append("<td></td>"),
							$("#nick2").append("<td></td>"),
							$("#date2").append("<td></td>"),
							$("#content2").append("<td colspan=2></td>"),
							$("#cnt").append("<td></td>")
							
							
				});
		
		
		function resultJson() {
			alert("성공");
			console.log(vovo);
		}
		
	</script>

</body>
</html>