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
      .menu {
        background: #000;
        color: #fff;
        line-height: 42px;
        padding: 0;
        border: none;
      }
      .menu:hover {
        background: transparent;
        color: #000;
        box-shadow: -7px -7px 20px 0px #fff9, -4px -4px 5px 0px #fff9,
          7px 7px 20px 0px #0002, 4px 4px 5px 0px #0001;
      }
      .menu:before,
      .menu:after {
        content: "";
        position: absolute;
        top: 0;
        right: 0;
        height: 2px;
        width: 0;
        background: #000;
        transition: 400ms ease all;
      }
      .menu:after {
        right: inherit;
        top: inherit;
        left: 0;
        bottom: 0;
      }
      .menu:hover:before,
      .menu:hover:after {
        width: 100%;
        transition: 800ms ease all;
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