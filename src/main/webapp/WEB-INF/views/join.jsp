<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<!-- <script src="common-script.js"></script> -->
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
		<form action="joinInsert.do" method="post">
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
							<td class="join_input"><input type="text" name="user_email"
								id="user_email" required style="width: 150px; height: 30px;"
								placeholder="이메일 주소"><span id="middle">@</span><input
								type="text" id="email_address" name=email_address
								list="user_email_address"
								style="width: 130px; height: 30px; border: 1px solid #d1d1d1; border-radius: 5%;">
								<datalist id="user_email_address">
									<option value="naver.com">naver.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="daum.net">daum.net</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="icloud.com">icloud.com</option>
									<option value="직접입력">직접입력</option>
								</datalist> <input type="hidden" id="m_email" name="m_email" value=""
								oninput="checkId()"> <!-- <button class="btn btn-info btn-sm" id="idCheck" type="button">중복체크</button> -->
							</td>
						</tr>
						<tr>
							<td></td>
							<td><p id="idCheck" style="text-align: left;"></p></td>
						</tr>
						<tr>
							<td class="join_title">비밀번호</td>
							<td class="join_input"><input type="password" name="m_pw"
								id="pw" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="비밀번호" /></td>
						</tr>
						<tr>
							<td class="join_title">비밀번호 확인</td>
							<td class="join_input"><input type="password" id="checkpw"
								name="checkpw" class="join_input" onkeyup="passConfirm()"
								size="20" maxlength="30" height="120px" placeholder="비밀번호 확인" /></td>
						</tr>
						<tr>
							<td></td>
							<td><p id="pwCheck" style="text-align: left;"></p></td>
						</tr>
						<tr>
							<td class="join_title">이름</td>
							<td class="join_input"><input type="text" name="m_name"
								id="name" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="이름" /></td>
						</tr>
						<tr>
							<td class="join_title">닉네임</td>
							<td class="join_input"><input type="text" name="m_nick"
								id="nick" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="닉네임" /></td>
						</tr>
						<tr>
							<td></td>
							<td><p id="nickCheck" style="text-align: left;"></p></td>
						</tr>
						<tr>
							<td class="join_title">생년월일</td>
							<td class="join_input"><input type="date" name="m_birthdate"
								id="birthdate" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="" /></td>
						</tr>
						<tr>
							<td class="join_title">성별</td>
							<td class="join_input" colspan="2"><input type="radio"
								name="m_gender" value="남" class="gender">남자<input
								type="radio" name="m_gender" value="여" class="gender">여자<input
								type="radio" name="m_gender" value="x" class="gender">선택
								안함</td>
						</tr>
						<tr>
							<td class="join_title">주소</td>
							<td class="join_input"><input type="text" name="m_addr"
								id="addr" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="주소" /></td>
						</tr>
						<tr>
							<td class="join_title">주거 형태</td>
							<td class="join_input"><select id="ftype" name="m_ftype"
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
							<td class="join_input"><input type="text" name="m_fsize"
								id="size" class="join_input" size="20" maxlength="30"
								height="120px" placeholder="ex) 1인" /></td>
						</tr>
					</table>
					<hr style="opacity: 0.5;">
					<button type="submit" class="join_btn"
						style="width: 450px; height: 60px; font-size: 18px; color: white; font-weight: bold; text-align: center; background-color: #7f7f7f;">회원가입</button>
					<p style="text-align: center; font-weight: bold;">
						이미 아이디가 있으신가요? <a href=login.do><u> 로그인</u></a>
					</p>

				</div>
			</div>
		</form>
	</section>
	<script>
		// 이메일주소 하나로 가져오기

		$("#user_email").blur(function() {
			email();
		});

		$("#email_address").change(function() {
			email();
		});

		function email() {
			const email = $("#user_email").val();
			const middle = $("#middle").text();
			const address = $("#email_address").val();
			if (email != "" && address != "") {
				$("#m_email").val(email + middle + address);
			}
		};

		// 아이디 중복체크
		$(email).keyup(function() {

			var id = $('#m_email').val();

			if (id == "") {
				console(id);
			} else {
				$.ajax({

					url : "idCheck.do",
					type : "POST",
					dataType : "JSON",
					data : {
						"id" : id
					},
					success : resultJson,
					error : function(e) {
						console.log(e);
					}

				});
			}

		});

		function resultJson(data) {
			// 이미 있는 id 회원 정보가 넘어오면 resultIdCheck 태그 안에
			// 이미 존재하는 아이디 입니다 글자를
			// 아니라면 사용 가능한 아이디 입니다 글자를 넣어주세요
			if (data.m_email == undefined) {
				// 사용 가능
				$('#idCheck').html('사용 가능한 아이디 입니다.');
				$('#idCheck').css('color', 'skyblue');
				console.log(data.m_email)
			} else {
				// 사용 불가능
				$('#idCheck').html('이미 등록된 아이디 입니다.');
				$('#idCheck').css('color', 'red');
			}
		};

		// 비밀번호 일치 확인
		$("#pw, #checkpw").on("change", function() {
			var password = $('#pw').val();
			var passwordcheck = $('#checkpw').val();
			if (password != passwordcheck) {
				$('#pwCheck').text('비밀번호가 불일치합니다.')
				$('#pwCheck').css('color', 'red');

			} else {
				$('#pwCheck').text('비밀번호가 일치합니다.')
				$('#pwCheck').css('color', 'skyblue');

			}
		});

		// 닉네임 중복체크
		$(nick).keyup(function() {

			var nick = $('#m_nick').val();

			if (nick == "") {
				console(nick);
			} else {
				$.ajax({

					url : "nickCheck.do",
					type : "POST",
					dataType : "JSON",
					data : {
						"nick" : nick
					},
					success : resultJson2,
					error : function(e) {
						console.log(e);
					}

				});
			}

		});

		function resultJson2(data) {
			// 이미 있는 id 회원 정보가 넘어오면 resultIdCheck 태그 안에
			// 이미 존재하는 아이디 입니다 글자를
			// 아니라면 사용 가능한 아이디 입니다 글자를 넣어주세요
			if (data.m_nick == undefined) {
				// 사용 가능
				$('#nickCheck').html('사용 가능한 닉네임 입니다.');
				$('#nickCheck').css('color', 'skyblue');
				console.log(data.m_nick)
			} else {
				// 사용 불가능
				$('#nickCheck').html('이미 등록된 닉네임 입니다.');
				$('#nickCheck').css('color', 'red');
			}
		};
	</script>



</body>
</html>
