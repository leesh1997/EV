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
<link rel="stylesheet" href="resources/css/join.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>

	<section class="header">
		<div class=" "></div>
	</section>

	<section>
		<form action="#" method="post">
			<div class="main">
				<div class="join_wrapper" style="margin: 40px auto">
					<div style="text-align: center;">
						<img src="resources/img/ev_icon.png" width="150" height="auto"
							alt="demo" id="btn_goMain" />
					</div>
					<hr style="opacity: 0.5;">
					<table>
						<tr>
							<td class="join_title">아이디</td>
							<td class="join_input"><span class="email-input__local"><input
									class="form-control" placeholder="이메일을 입력하세요." size="1"
									value="" style="width: 165px; height: 30px;"></span><span
								class="email-input__separator"> @ </span><span
								class="email-input__domain"><select
									class="form-control empty"
									style="width: 130px; height: 30px; border: 1px solid #d1d1d1; border-radius: 5%;"><option
											value="" disabled="">선택해주세요</option>
										<option value="naver.com">naver.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="outlook.com">outlook.com</option>
										<option value="icloud.com">icloud.com</option>
										<option value="_manual">직접입력</option></select> </span></td>
						</tr>
						<tr>
							<td class="join_title">비밀번호</td>
							<td class="join_input"><input type="password" name="pw"
								id="pw" class="join_input" size="20" maxlength="30"
								height="120px" /></td>
						</tr>
						<tr>
							<td class="join_title">비밀번호 확인</td>
							<td class="join_input"><input type="password" name="pw"
								id="pw" class="join_input" size="20" maxlength="30"
								height="120px" /></td>
						</tr>
						<tr>
							<td class="join_title">이름</td>
							<td class="join_input"><input type="text" name="name"
								id="name" class="join_input" size="20" maxlength="30"
								height="120px" /></td>
						</tr>
						<tr>
							<td class="join_title">닉네임</td>
							<td class="join_input"><input type="text" name="nick"
								id="nick" class="join_input" size="20" maxlength="30"
								height="120px" /></td>
						</tr>
						<tr>
							<td class="join_title">생년월일</td>
							<td class="join_input"><input type="date" name="birthdate"
								id="birthdate" class="join_input" size="20" maxlength="30"
								height="120px" /></td>
						</tr>
						<tr>
							<td class="join_title">성별</td>
							<td class="join_input" colspan="2"><input type="radio"
								name="gender" value="남자" class="gender">남자<input
								type="radio" name="gender" value="여자" class="gender">여자<input
								type="radio" name="gender" value="선택안함" class="gender">선택
								안함</td>
						</tr>
						<tr>
							<td class="join_title">주소</td>
							<td class="join_input"><input type="text" name="nick"
								id="nick" class="join_input" size="20" maxlength="30"
								height="120px" /></td>
						</tr>
						<tr>
							<td class="join_title">주거 형태</td>
							<td class="join_input"><select id="ftype" name="ftype"
								style="width: 330px; height: 40px;">
									<option value="원룸">원룸</option>
									<option value="오피스텔">오피스텔</option>
									<option value="아파트">아파트</option>
									<option value="연립">연립</option>
									<option value="빌라">빌라</option>
									<option value="주택">주택</option>
							</select></td>
						</tr>
						<tr>
							<td class="join_title">가구 수</td>
							<td class="join_input"><input type="text" name="fsize"
								id="size" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="ex) 1인" /></td>
						</tr>
					</table>
					<hr style="opacity: 0.5;">
					<button type="submit" class="join_btn"
						style="width: 450px; height: 60px; font-size: 18px; color: white; font-weight: bold; text-align: center; background-color: #7f7f7f;">회원가입</button>
					<p style="text-align: center; font-weight: bold; 
					">
						이미 아이디가 있으신가요? <a href=login.do><u>로그인</u></a>
					</p>

				</div>
			</div>
		</form>
	</section>


</body>
</html>
