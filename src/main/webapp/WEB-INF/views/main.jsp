<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel = "stylesheet" href="resources/css/main.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
</head>
<body >
    <div class="hero">
   <div class="sidebar">
        <div class="sidetext-top"><h1>EV</h1></div>
        <div>
            <div class="main-text-box"> <a href="login.do">Login</a></div>
            <div class="main-text-box">  <a href="#"> MyPage</a></div>
            <div class="main-text-box"> <a href="join.do">Join</a></div>

      
        </div>
        <div class="hambuger">
            <button class="open" >></button>
        </div>
      
   </div>
   <div class="topbar">
       <ul>
        <li style="padding-left: 20px;"><h1>EV</h1></li>
        <li style="float: right; margin-top: 20px; margin-right: 20px;"> <button class="open topbt">=</button></li>

       </ul>
  
      

   </div>
   <div class="ggaggong ">
    
    
    <div class="he st1"> <A href="color.html"><img src="resources/img/bora.png" class="he-img st1im" alt="content"><div class="he-text">color</div></A></div>
    <div class="he st2"><a href="#"><img src="resources/img/inte1.png" class="he-img st2im"><div class="he-text">li</div></a></div>
    <div class="he st3"><a href="#"></a><img src="resources/img/inte2222.PNG" class="he-img st3im"><div class="he-text">content</div></a></div>
    <div class="he st4"><a href="#"></a><img src="resources/img/inte3.png" class="he-img st4im"><div class="he-text">content</div></a></div>
    
   </div>
  
</div>
<div class ="main">  
   
   <div class="list-care"> <img src="resources/img/m7.jpg" class="main-img to1"> </div>
<div class="list-care"><img src="resources/img/ma.jpg" class="main-img to2"> </div>
<div class="list-care"><img src="resources/img/ma2.jpg" class="main-img to3"></div>

     
  
 </div>

  
   <script>
       
       $(document).ready(function(){
           $('.he').hide();
       })
    
       var bt = $('.open');
      bt.click(function(){
        
        $('.st1').toggle(500);
        $('.st2').toggle(600);
        $('.st3').toggle(700);
        $('.st4').toggle(800);
       })
     
       $(document).ready(function(){
           $('.to1').css('opacity',1);
           $('.to2').css('opacity',0);
           $('.to3').css('opacity',0);
       })
       
    //    $('.to1').animate({opacity:'0'});
                // $('.to2').animate({opacity:'1'});
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