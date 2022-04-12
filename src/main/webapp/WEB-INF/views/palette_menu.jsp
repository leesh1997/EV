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

      .frame {
        width: 90%;
        margin: 40px auto;
        text-align: center;
      }
      button {
        margin: 20px;
        outline: none;
      }
      .custom-btn {
        width: 130px;
        height: 40px;
        padding: 10px 25px;
        border: 2px solid #000;
        font-family: "Lato", sans-serif;
        font-weight: 500;
        background: transparent;
        cursor: pointer;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
      }

      .menu {
        background: #000;
        color: #fff;
        line-height: 42px;
        padding: 0;
        border: none;
        z-index: 1;
        -webkit-transition: all 0.3s linear;
        transition: all 0.3s linear;
      }

      .menu:hover {
        background: transparent;
        color: #000;
      }

      #menu:before,
      #menu:after {
        position: absolute;
        content: "";
        left: 0;
        width: 100%;
        height: 50%;
        right: 0;
        z-index: -1;
        background: #000;
        transition: all 0.3s ease;
      }

      .menu:before {
        top: 0;
      }

      .menu:after {
        bottom: 0;
      }

      .menu:hover:before,
      .menu:hover:after {
        height: 0;
        background-color: #000;
      }
    </style>
  </head>
  <body>
    <div class="header">	
      <h1>My palette</h1>
    </div>
    <div class="menu_wrap">
      <div class="menu_choice">
        <a href="palette.do"><button class="custom-btn menu">나만의 팔레트 만들기</button></a>
      </div>
      <div class="menu_choice">
        <a href="paletteRecommend.do"><button class="custom-btn menu">추천 팔레트 고르기</button></a>
      </div>
    </div>
  </body>
</html>
