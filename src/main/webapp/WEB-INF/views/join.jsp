<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <script src="common-script.js"></script>
    <link rel="stylesheet" href="resources/css/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>

    </style>
  </head>
  <body>
    <div class="hero">
      <div class="sidebar">
        <div class="sidetext-top"><h1>EV</h1></div>
        <div>
          <div class="main-text-box">Login</div>
          <div class="main-text-box">MyPage</div>
          <div class="main-text-box">HeHe</div>
        </div>
        <div class="hambuger">
          <button class="open">></button>
        </div>
      </div>
      <div class="topbar">
        <div>EV</div>

        <div class="topbtn">
          <button class="open topbt">=</button>
        </div>
      </div>
      <div class="ggaggong">
        <div class="he st1">
          <img src="img/bora.png" class="he-img st1im" alt="content" />
          <div class="he-text">content</div>
        </div>
        <div class="he st2">
          <img src="img/inte1.png" class="he-img st2im" />
          <div class="he-text">content</div>
        </div>
        <div class="he st3">
          <img src="img/inte2222.PNG" class="he-img st3im" />
          <div class="he-text">content</div>
        </div>
        <div class="he st4">
          <img src="img/inte3.png" class="he-img st4im" />
          <div class="he-text">content</div>
        </div>
      </div>
    </div>
    <section class="header">
      <div class=" "></div>
    </section>

    <section>
      <form action="#" method="post">
        <div class="main">
          <div class="join_wrapper" style="margin: calc(50vh - 300px) auto 0px">
            <span>
              <img
                src="/최종/img/ev_icon.png"
                width="200"
                height="auto"
                alt="demo"
                id="btn_goMain"
              />
            </span>
            <p>ev 회원가입</p>

            <table width="700px">
              <tr>
                <td>아이디(e-mail)</td>
                <td>
                  <input
                    type="text"
                    name="email"
                    id="email"
                    class="join_input"
                    placeholder="smhrd@smhrd.co.kr"
                    width="500"
                    height="120px"
                    border-top="none"
                    border-left="none"
                    border-right="none"
                    border-bottom="solid 1px gray"
                  />
                </td>
              </tr>
              <tr>
                <td>비밀번호</td>
                <td>
                  <input
                    type="password"
                    name="pw"
                    id="pw"
                    class="join_input"
                    size="20"
                    maxlength="30"
                    height="120px"
                  />
                </td>
                <tr>
                  <td>비밀번호 확인</td>
                  <td>
                    <input
                      type="password"
                      name="pw_check"
                      id="pw_check"
                      class="join_input"
                      size="20"
                      maxlength="30"
                      height="120px"
                    />
                  </td>
                </tr>
              </tr>
              <tr>
                <td>이름</td>
                <td>
                  <input
                    type="text"
                    name="name"
                    id="name"
                    class="join_input"
                    size="20"
                    maxlength="30"
                    height="120px"
                  />
                </td>
              </tr>
              <tr>
                <td>별명</td>
                <td>
                  <input
                    type="text"
                    name="nick"
                    id="nick"
                    class="join_input"
                    size="20"
                    maxlength="30"
                    height="120px"
                  />
                </td>
              </tr>
              <tr>
                <td>주소</td>
                <td>
                  <input
                    type="text"
                    name="nick"
                    id="nick"
                    class="join_input"
                    size="20"
                    maxlength="30"
                    height="120px"
                  />
                </td>
              </tr>
              <tr>
                <td >
                  성별
                </td>
                <td>
                  <input type="radio" id="man" name="gender" value="남자" />
                  <label for="man">남자</label>
                  <input type="radio" id="woman" name="gender" value="여자" />
                  <label for="woman">여자</label>
                  <input type="radio" id="none" name="gender" value="선택안함" />
                  <label for="none">선택안함</label>
                </td>
              </tr>
              <tr>
                <td colspan="2">
                  <input type="submit" value="JOIN" />
                </td>
              </tr>
            </table>
          </div>
        </div>
      </form>
    </section>

    <script>
      $(document).ready(function () {
        $(".he").hide();
      });
      var bt = $(".open");
      bt.click(function () {
        $(".st1").toggle(500);
        $(".st2").toggle(600);
        $(".st3").toggle(700);
        $(".st4").toggle(800);
        if (bt.text() == ">") {
          bt.text("<");
        } else {
          bt.text(">");
        }
      });
      //    $('.st1').hover(function(){
      //        $('.st1im').css('opacity','0.5')
      //    },500)
    </script>
  </body>
</html>
