<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EV WishList</title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <link rel = "stylesheet" href="resources/css/wishlist.css" type="text/css">

</head>
<body>
<jsp:include page = "side_topbar.jsp"></jsp:include>
	<div class = "main-content">
	
		<h1 style="margin-top: 0; padding-left:20px; padding-top: 22px; text-align: left;">My WishList</h1>

		<br>
		<div class="choose">
		<div class="list_box">
		<form action="pwish_delete.do" method="post">
		<div class="title">My Palette<button type="button" class="no1 updown">Open</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash1"></button></div>
		<div class="title list1 lis">
		<%-- <fmt:formatNumber var = "page" value="${fn:length(p_list)}"/>
		<fmt:parseNumber var = "cnt" integerOnly="true" value="${((page)/10)+1 }"/> --%>
		<div class= "list-full">
		<c:forEach var="p_list" items="${ p_list}"  varStatus="i">
			<div class="inpalette"> 
			<div class="check"><input type="checkbox" name="delete_seq" value="${p_list.pl_seq}">
<%-- 			<input type="text" name="pl_seq" value="${p_list.pl_seq}"> --%>
					
			
				<div class= "point">
		
					<div class="palette cl1" style="background-color:${p_list.pl_c1};">
				
					</div>
					<div class ="palette-name">색상</div> 
				</div>
				<div class= "point">
		
					<div class="palette cl2" style="background-color: ${p_list.pl_c2}">
	

					</div>
					 <div class ="palette-name">색상</div> 
				</div>
				<div class= "point">
		
					<div class="palette cl3" style="background-color: ${p_list.pl_c3}">
				
					</div>
				 	<div class ="palette-name"> 색상</div> 
				</div>
				<div class= "point">
		
					<div class="palette cl4" style="background-color:${p_list.pl_c4}">
					
					</div>
					 <div class ="palette-name"> 색상</div> 
				</div>
				<div class= "point">
		
					<div class="palette cl5" style="background-color: ${p_list.pl_c5}">
					
					</div>
					<div class ="palette-name"> 색상</div> 
				</div>
			</div>
			</div>
				</c:forEach>
			</div> 
				<%-- <div>
					<ul>
						<c:forEach var="pg_num" begin="1" end="${cnt }">
							<li>${pg_num}</li>
						</c:forEach>
						
					</ul>
				</div>
			 --%>
		</div>
		</form>
		</div>
		</div>
		<div class="list_box">
		<div class="title">My Interior<button type="button" class="no2 updown">Open</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash2"></button></div>
		<div class="title list2 lis">
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<!-- <span>ㅉㅉㅉ</span> -->
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
				<!-- 	<span>ㅉㅉㅉ</span> -->
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
				<!-- 	<span>ㅉㅉㅉ</span> -->
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<!-- <span>ㅉㅉㅉ</span>-->
 			</div>
				
			</div>
		</div>
		</div>
		<div class="list_box">
		<div class="title">My Product<button  type="button" class="no3 updown">Open</button>
		<button class="delete" href="#"><img src="resources/img/trash.png" class="trashimg trash3"></button></div>
		<div class="title list3 lis">
			<div class= "list-full">
			<c:forEach var="w_list" items="${w_list}"  varStatus="i">
				<div class= "eeun-ae">
				<div class= "jjim_img_list"><img src="${w_list. }" class="jjim_img"> </div>	
					<div class= "jjim_text_list">
						<span>제목</span>
						<span>ㅉㅉㅉ</span>
					</div>
					
				</div>
			</c:forEach>
				
			
			
		</div>
		</div>
	<!-- 	
		<div class="half jepum"><img src="resources/img/sam.jpg" class="half-img"><a href="wishlist_palette.do">팔레트</a></div>
		<div class="half palt"><img src="resources/img/inte1.png"class="half-img"><a href="wishlist_product.do">제품</a></div> -->
		</div>
	</div>
	
</body>
<script type="text/javascript">
	$(document).ready(function(){
		$('.list1, .list2, .list3').hide();
	})
	/* 1번버튼 */
		$('.no1').click(function() {
		if($('.no1').text()=='Open'){
			$('.no1').text('Close');
			$('.list1').slideDown(500);
			if($('.no2').text()=="Close"){
				$('.no2').text('Open');
				$('.list2').slideUp(500);
			}
			if($('.no3').text()=='Close'){
				$('.no3').text('Open');
				$('.list3').slideUp(500);
			}
		}
		else if($('.no1').text()=='Close'){
			$('.no1').text('Open');
			$('.list1').slideUp(500);
		}
		})
		/* 2번버튼 */
		$('.no2').click(function() {
		if($('.no2').text()=='Open'){
			$('.no2').text('Close');
			$('.list2').slideDown(500);
			if($('.no1').text()=='Close'){
				$('.no1').text('Open');
				$('.list1').slideUp(500);
			}
			if($('.no3').text()=='Close'){
				$('.no3').text('Open');
				$('.list3').slideUp(500);
			}
		}
		else if($('.no2').text()=='Close'){
			$('.no2').text('Open');
			$('.list2').slideUp(500);
		}
		})
	/*3번버튼  */
	$('.no3').click(function() {
		if($('.no3').text()=='Open'){
			$('.no3').text('Close');
			$('.list3').slideDown(500);
			if($('.no2').text()=='Close'){
				$('.no2').text('Open');
				$('.list2').slideUp(500);
			}
			if($('.no1').text()=='Close'){
				$('.no1').text('Open');
				$('.list1').slideUp(500);
			}
		}
		else if($('.no3').text()=='Close'){
			$('.no3').text('Open');
			$('.list3').slideUp(500);
		}
			
	})



</script>
</html>