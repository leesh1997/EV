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
		<form action="#" method="post">
		<div class="title">My Palette<button type="button" class="no1 updown">Open</button>
		<button class="delete"><img src="resources/img/trash.png" class="trashimg trash1"></button></div>
		<div class="title list1 lis">
			<div class="inpalette"> 
			<div class="check"><input type="checkbox"></div>
				<div class= "point">
					
					<div class="palette cl1" style="background-color: rgba(255,4,50)">
					</div>
					<div class ="palette-name"> 색상</div>
				</div>
					<div class="palette cl2" style="background-color: rgba(255,4,50)">
				</div>
					<div class="palette cl3" style="background-color: rgba(255,4,50)">
				</div>
					<div class="palette cl4" style="background-color: rgba(255,4,50)">
				</div>
					<div class="palette cl5" style="background-color: rgba(255,4,50)">
				</div>
			</div>
			<div class="inpalette"> 
				<div><input type="checkbox"></div>
				<div class="palette cl1" style="background-color: rgba(127,0,255)">
				</div>
					<div class="palette cl2" style="background-color: rgba(95,75,139)">
				</div>
					<div class="palette cl3" style="background-color: rgba(130,11,46)">
				</div>
					<div class="palette cl4" style="background-color: rgba(255,4,50)">
				</div>
					<div class="palette cl5" style="background-color: rgba(255,4,50)">
				</div>
			</div>
	
		</div>
		</form>
		</div>
		</div>
		<div class="list_box">
		<div class="title">My Interior<button class="no2 updown">Open</button>
		<a class="delete" href="#"><img src="resources/img/trash.png" class="trashimg trash2"></a></div>
		<div class="title list2 lis">
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
		<div class="list_box">
		<div class="title">My Furniture<button class="no3 updown">Open</button>
		<a class="delete" href="#"><img src="resources/img/trash.png" class="trashimg trash3"></a></div>
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