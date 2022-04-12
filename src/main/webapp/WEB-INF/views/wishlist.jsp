<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<div class="title">색상 리스트<button class="no1 updown">보기</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash1"></button></div>
		<div class="title list1 lis">
			<div class="color_list">
				응애..
			</div>
			<div>
			에?
			</div>
		
		</div>
		</div>
		<div class="list_box">
		<div class="title">팔레트<button class="no2 updown">보기</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash2"></button></div>
		<div class="title list2 lis">
			<div class="wish_pallete">
					
				
			</div>
		
		</div>
		</div>
		<div class="list_box">
		<div class="title">가구<button class="no3 updown">보기</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash3"></button></div>
		<div class="title list3 lis">
			<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
				<div class= "eeun-ae">
			<div class= "jjim_img_list"><img src="resources/img/bora.png" class="jjim_img"> </div>	
				<div class= "jjim_text_list">
					<span>제목</span>
					<span>ㅉㅉㅉ</span>
				</div>
				
			</div>
			
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
		$('.no1').click(function() {
		if($('.no1').text()=='보기'){
			$('.no1').text('닫기');
			$('.list1').slideDown(500);
		}
		else if($('.no1').text()=='닫기'){
			$('.no1').text('보기');
			$('.list1').slideUp(500);
		}
		})
		
		$('.no2').click(function() {
		if($('.no2').text()=='보기'){
			$('.no2').text('닫기');
			$('.list2').slideDown(500);
		}
		else if($('.no2').text()=='닫기'){
			$('.no2').text('보기');
			$('.list2').slideUp(500);
		}
		})

	$('.no3').click(function() {
		if($('.no3').text()=='보기'){
			$('.no3').text('닫기');
			$('.list3').slideDown(500);
		}
		else if($('.no3').text()=='닫기'){
			$('.no3').text('보기');
			$('.list3').slideUp(500);
		}
			
	})



</script>
</html>