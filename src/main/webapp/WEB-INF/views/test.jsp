<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>flask시작</h1>
	<form action="http://f4.project-jupyter.ddns.net:8874/img" method="post"
	enctype="multipart/form-data">
		   <div style="text-align: center">
          
               <button type="button" id="file_upload"
                  class="genric-btn primary radius exp_button"
                  onclick="onclick=document.all.file.click()">사진 업로드</button>
				<div>
               <input id="file" type="file" name="img"/>
               </div>
               <div class="select_img"><img src=""></div>
         <%--       <input type="hidden" name="user_id" value="${info.mb_email }"> --%>

               <button type="submit" class="genric-btn primary radius exp_button">적용</button>
        		<div class="select_img"><img src="" /></div>
         </div>
     
	</form>
	<script type="text/javascript">
		
	 $("#file").change(function(){
		   if(this.files && this.files[0]) {
		    var reader = new FileReader;
		    reader.onload = function(data) {
		     $(".select_img img").attr("src", data.target.result).width(500);        
		    }
		    reader.readAsDataURL(this.files[0]);
		   }
		  });
			
	</script>
	   <div>
	   	<p> ${result }</p>
	   </div>
	   
	
</body>

<script>
$("#file").change(function(){
	   if(this.files && this.files[0]) {
	    var reader = new FileReader;
	    reader.onload = function(data) {
	     $(".select_img img").attr("src", data.target.result).width(500);        
	    }
	    reader.readAsDataURL(this.files[0]);
	   }
	  });
</script>
</html>