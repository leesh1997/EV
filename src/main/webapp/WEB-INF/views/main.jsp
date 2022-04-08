<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="resources/css/main.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <style>
   	body{
   		overflow: hidden;
   	}
   </style>
</head>
<body >
	<jsp:include page = "side_topbar.jsp"></jsp:include>
 
<div class ="main">  
   
   <div class="list-care"> <img src="resources/img/m7.jpg" class="main-img to1"> </div>
<div class="list-care"><img src="resources/img/ma.jpg" class="main-img to2"> </div>
<div class="list-care"><img src="resources/img/ma2.jpg" class="main-img to3"></div>

     
  
 </div>

  
   <script>
       
  
       
       function care(){
            if($('.to1').css('opacity')==1){
             
              $('.to1').animate({opacity:'0'});
                 $('.to2').animate({opacity:'1'});

                $('.to3').css('opacity',0);
            }
            else if($('.to2').css('opacity')==1){
                $('.to1').css('opacity',0);
                $('.to2').animate({opacity:'0'});
                $('.to3').animate({opacity:'1'});;
            }
            else if($('.to3').css('opacity')==1){
                $('.to1').animate({opacity:'1'});
                $('.to2').css('opacity',0);
                $('.to3').animate({opacity:'0'});
            }
       }
  
     setInterval(function(){
         care();
     }, 5000); 
      
   </script>
</body>
</html>