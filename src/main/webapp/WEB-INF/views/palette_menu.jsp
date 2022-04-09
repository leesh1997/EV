<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      .menu_wrap {
        width: 100%;
        height: 1000px;
        display: flex;
        flex-direction: row;
        flex-flow: wrap;
        justify-content: space-around;
        background-color: #fcfcfc;
      }
      .menu_choice {
        margin-top: 300px;
      }
      .menu{
        background-color: #e8e8e8;
        border-radius: 5px;
      }
    </style>
  </head>
  <body>
  <jsp:include page="side_topbar.jsp"></jsp:include>
    <div class="header">
      <h1>My palette</h1>
    </div>
    <div class="menu_wrap">
      <div class="menu_choice">
        <button class="menu">나만의 팔레트 만들기</button>
      </div>
      <div class="menu_choice">
        <button class="menu">추천 팔레트 고르기</button>
      </div>
    </div>
  </body>
</html>
</body>
</html>