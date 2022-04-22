<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>

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
	margin-left: 100px;
	padding: 10px;
	
}

.board_list_gallery ul {
	width: 100%;
	display: inline-block;
	margin-right: 20px;
	margin-left: 20px;
	justify-content: center;
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
.hehe{
	text-align: center;
}
ul.hehe li{
	padding : 10px;
}
.gallery_container{
font-size: 11px;}
.board_indication{
	display:flex;
	flex-direction: column;
	
}
.search_list{
	position: relative;
	display: flex;
	justify-content: center;
}
.search_list ul{
width: 60%;
}
.search_list ul li{
	display: inline-block;	
	margin-right: 10px; 
	font-size: 13px;
}
input[type="submit"]{
	border:none;
	background-color: white;
}
input[type="submit"]:hover{
	border:none;
	background-color: violet;
}
.fromstyle{
	display: flex;
	flex-direction: row;
}
.board_img{
	position: relative;
}
.gallery_items{
	position: relative;
}
.gallery_items_like{
	    position: absolute;
    margin-top: -21px;
    right: 10px;
    background-color:white;
}
</style>
<body style="overflow-x : hidden">
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
				<form action="product_search.do?pageNum=1" method="post"  
				id="search_text" >
					<input type="text"name="searchinfo" style="width:300px; height: 15px;">	
					<button>검색</button>				
				</form>
			
				</div>
				<div style="padding: 15px">
					<a href="product.do?pageNum=1"><button>전체결과 보기</button></a>
				</div>
				<div class="board_btn_writingform">
					<a href="board_writing_form.do"><button>게시물 작성</button></a>
				</div>
				
			</div>
			<div class= "search_list">
				<ul>
					<c:forEach var = "list_type" items="${type_list }" varStatus="i">
					<li>
					<form action="product_search.do?pageNum=1" method="post" class="formstyle">
					<input type="submit" name="searchinfo" value="${list_type.p_type}">
					</form>
					</li>
					</c:forEach>
				</ul>
				</div>
		</div>
		<hr id="line" />

		<div class="board_list_gallery">
			<ul>
				<c:forEach var="post" items="${requestScope.list}" varStatus="i">
					<li style="width: 22%">
						<div class="gallery_container">
							<div class="board_img">
								<a href="${post.p_url }"> <img src="${post.p_imgurl}" width="130%"
									height="auto" class="gallery_items" style="margin-left: -15%">
								</a>
							
									<button id="like${post.p_seq}" class="gallery_items_like" value="${post.p_seq}">
						 	<svg baseProfile="tiny" height="24px" id="Layer_1" version="1.2" viewBox="0 0 24 24" width="24px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><path d="M12,20c-0.195,0-0.391-0.057-0.561-0.172c-0.225-0.151-5.508-3.73-7.146-5.371C2.462,12.626,2.25,10.68,2.25,9.375   C2.25,6.411,4.661,4,7.625,4C9.427,4,11.023,4.891,12,6.256C12.977,4.891,14.573,4,16.375,4c2.964,0,5.375,2.411,5.375,5.375   c0,1.305-0.212,3.251-2.043,5.082c-1.641,1.641-6.923,5.22-7.146,5.371C12.391,19.943,12.195,20,12,20z M7.625,6   C5.764,6,4.25,7.514,4.25,9.375c0,1.093,0.173,2.384,1.457,3.668c1.212,1.212,4.883,3.775,6.293,4.746   c1.41-0.971,5.081-3.534,6.293-4.746c1.284-1.284,1.457-2.575,1.457-3.668C19.75,7.514,18.236,6,16.375,6S13,7.514,13,9.375   c0,0.552-0.447,1-1,1s-1-0.448-1-1C11,7.514,9.486,6,7.625,6z"/></g></svg>
							</button>
								
					
							
							</div>
							<div class="gallery_info_cont">

								<div class="board_tit">
									<a href="${post.p_url }"> <strong style="font-size: 14px">${post.p_name}</strong>
									</a>
									<p>${post.p_brand} /  종류: ${post.p_type }</p>
									<p>${post.p_price } 원  </p>
								</div>
							</div>
							<!-- //gallery_info_cont -->
						</div> <!-- //gallery_cont -->
					</li>
				</c:forEach>
				</ul>
	<c:choose>
		<c:when test="${empty search_info}">
		
			<ul class="hehe">
			<li><a href="product.do?pageNum=1">&lt;&lt;</a></li>
			<li class="left_btn"><a href="product.do?pageNum=${paging.beginPage-1}">&lt;</a></li>
			<c:forEach var="i" begin="${paging.beginPage }" end="${paging.endPage }"
				varStatus = "status">
				<li><a href="http://localhost:8081/ev/product.do?pageNum=${status.index}"
				class= "btn_count${status.index}">${status.index}</a></li>
				
			</c:forEach>
			<li class="right_btn"><a href="product.do?pageNum=${paging.endPage+1}">&gt;</a></li>
			<li><a href="product.do?pageNum=${paging.totalPage }">&gt;&gt;</a></li>
			</ul>
			
		</c:when>
		
		
		<c:otherwise>
			<ul class="hehe">
			<li><a href="product_search.do?searchinfo=${search_info}&pageNum=1">&lt;&lt;</a></li>
			<li class="left_btn"><a href="product_search.do?searchinfo=${search_info}&pageNum=${paging.beginPage-1}">&lt;</a></li>
			<c:forEach var="i" begin="${paging.beginPage }" end="${paging.endPage }"
				varStatus = "status">
				<li><a href="product_search.do?searchinfo=${search_info}&pageNum=${status.index}"
				 class= "btn_count${status.index}">${status.index}</a></li>
				
			 </c:forEach> 
			<li class="right_btn"><a href="product_search.do?searchinfo=${search_info}&pageNum=${paging.endPage+1}" >&gt;</a></li>
			<li><a href="product_search.do?searchinfo=${search_info}&pageNum=${paging.totalPage }">&gt;&gt;</a></li>
			</ul>
		
		</c:otherwise>
	
	</c:choose>
			
		</div>

	</div>
	<script type="text/javascript">
	<%-- 	var infofo=<%=session.getAttribute("info") %>;
		console.log("확인"+infofo);
		if(infofo==null){
			 $('.gallery_items_like').on('click', function() {
				 alert('로그인후 이용하세요');
				 history.go(-1);
			 }
		} --%>
		$(".btn_count"+${page}).css('color','violet');
		$(".btn_count"+${page}).css('border-bottom','solid 1px violet');
		   var likeee=$('#like').val();
		 $(document).ready(function() {

		      /*   var likee = $(this).val(); */
		    <%--   if(<%=session.getAttribute("info")%>==null){
		    	   $(".gallery_items_like").attr("disabled", true);
		      }
		      else{
		    	   $(".gallery_items_like").attr("disabled", false);
		      } --%>
		  

		        console.log("시작확인");
		         $.ajax({
		            url : "wishlistcheck.do",
		            type : "post",
		            dataType : "json",
		         /*    data : {
		               "likee" : likee
		            }, */
		            success : resultJson1,
		            error : function(e) {
		               console.log(e);
		            }
		         });
		      }); 
		      function resultJson1(data){
		    	  for (var i =0; i<data.length; i++){
		    		  console.log(data[i].p_seq);
		    		
		    			$('#like'+data[i].p_seq).find("#Layer_1").css({ fill: 'pink' }); 
		    		
		    		  
		    	  }
		    	
				 
			  };
		  $('.gallery_items_like').on('click', function() {

		        var likee = $(this).val();
		        console.log("눌림");
				console.log(likee);
		         $.ajax({
		            url : "he.do",
		            type : "post",
		            dataType : "json",
		            data : {
		               "likee" : likee
		            },
		            success : resultJson,
		            error : function(e) {
		               console.log(e);
		            }
		         });
		      });
		  function resultJson(data){
		  		if(data.success=="delete"){
				  console.log("삭제완료");
				  $('#like'+data.p_seq).find("#Layer_1").css({ fill: 'black' });
			  }
			  else{
				  console.log("생성완료");
				  console.log(data);
				  $('#like'+data.p_seq).find("#Layer_1").css({ fill: 'pink' }); 
			  }
			 
		  };
		
		
		
		/* $(".gallery_items_like").click(function () {
			if($(this).find("#Layer_1").css({ fill: 'black' })){
				 $(this).find("#Layer_1").css({ fill: 'pink' });
			}
			else if( $(this).find("#Layer_1").css({ fill: 'pink' })){
				$(this).find("#Layer_1").css({ fill: 'black' })	
			}
			
		}) */
	</script>
</body>
</html>