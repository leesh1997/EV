<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<style>
.palette_wrap {
	margin-left: 100px;
}

.header {
	display: block;
	position: relative;
}

.draft-details {
	position: relative;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: space-between;
	top: 0;
	/* width: max-content; */
	height: max-content;
	padding: 0 20px;
	/* z-index: 999; */
	background-color: #fff;
}

.existing-picks {
	display: flex;
	position: relative;
	flex-direction: row;
	width: 100%;
	padding: 20px;
	transition: transform 0.5s cubic-bezier(0, 0.99, 0, 0.99);
	justify-content: center;
}

.gallery-container {
	width: inherit;
	height: inherit;
	display: flex;
	flex-direction: row;
	flex-flow: wrap;
	justify-content: space-around;
	background-color: #f1f5fc;
}

.block {
	display: table;
	position: relative;
	width: 7vw;
	height: 7vw;
	margin: 1vw;
	border: 10px solid #fff;
	cursor: pointer;
	border-radius: 50%;
	transition: all 0.5s cubic-bezier(0, 0.99, 0, 0.99);
}

.chosen_colors {
	width: 7vw;
	height: 7vw;
	margin: 1vw;
	border: 10px solid #fff;
	cursor: pointer;
	border-radius: 50%;
}

.btn_create {
	vertical-align: middle;
	width: 10vw;
	height: 2vw;
	margin: 1vw;
}

.block .block-description {
	display: table-cell;
	position: absolute;
	margin: 45px 15px 0px 15px;
	padding: 10px;
	text-align: center;
	/* margin: 0px 10px 10px 0px; */
	width: 100%
	color: #02142b;
	font-size: 0.7em;
	text-transform: uppercase;
	line-height: 1.2em;
	color: #f1f5fc;
	transition: border-radius 0.5s cubic-bezier(0, 0.99, 0, 0.99);
}
</style>
</head>
<body>
	<jsp:include page="side_topbar.jsp"></jsp:include>
	<div class="palette_wrap">
		<div class="header">
			<h1>palette</h1>
		</div>
		<div class="draft-details">
			<a href="http://www.khroma.co">
				<div class="logo">
					<!-- <img
            src="/최종/img/ev_icon.png"
            width="200"
            height="auto"
            alt="demo"
            id="btn_goMain"
          /> -->
				</div>
			</a>
			<div class="existing-picks">
				<div class="chosen_colors"
					style="background-color: rgb(84, 17, 193)" data-index="31"></div>
				<div class="chosen_colors"
					style="background-color: rgb(95, 131, 148)" data-index="12"></div>
				<div class="chosen_colors"
					style="background-color: rgb(198, 115, 109)" data-index="16"></div>
				<div class="chosen_colors"
					style="background-color: rgb(254, 170, 130)" data-index="28"></div>
				<div class="chosen_colors"
					style="background-color: rgb(207, 206, 245)" data-index="24"></div>
				<br>
				<div id="trainSet">
					<button class="btn_create">팔레트 생성하기</button>
				</div>
			</div>
		</div>
		<div id="colorGallery" class="gallery-container">
			<div class="block" data-index="0"
				style="background-color: rgb(208, 197, 236); color: rgb(208, 197, 236)">
				<span class="block-description">muted light violet</span>
			</div>
			<div class="block" data-index="1"
				style="background-color: rgb(183, 251, 250); color: rgb(183, 251, 250)">
				<span class="block-description">rich light cyan</span>
			</div>
			<div class="block" data-index="2"
				style="background-color: rgb(116, 35, 83); color: rgb(116, 35, 83)">
				<span class="block-description">muted dark magenta</span>
			</div>
			<div class="block" data-index="3"
				style="background-color: rgb(71, 21, 210); color: rgb(71, 21, 210)">
				<span class="block-description">rich midtone violet</span>
			</div>
			<div class="block" data-index="4"
				style="background-color: rgb(98, 74, 236); color: rgb(98, 74, 236)">
				<span class="block-description">rich midtone blue</span>
			</div>
			<div class="block" data-index="5"
				style="background-color: rgb(185, 131, 178); color: rgb(185, 131, 178)">
				<span class="block-description">pale midtone magenta</span>
			</div>
			<div class="block" data-index="6"
				style="background-color: rgb(97, 87, 32); color: rgb(97, 87, 32)">
				<span class="block-description">muted dark yellow</span>
			</div>
			<div class="block" data-index="7"
				style="background-color: rgb(117, 110, 153); color: rgb(117, 110, 153)">
				<span class="block-description">neutral midtone blue</span>
			</div>
			<div class="block" data-index="8"
				style="background-color: rgb(158, 25, 27); color: rgb(158, 25, 27)">
				<span class="block-description">rich dark red</span>
			</div>
			<div class="block" data-index="9"
				style="background-color: rgb(202, 156, 106); color: rgb(202, 156, 106)">
				<span class="block-description">muted midtone orange</span>
			</div>
			<div class="block" data-index="10"
				style="background-color: rgb(70, 100, 73); color: rgb(70, 100, 73)">
				<span class="block-description">neutral dark green</span>
			</div>
			<div class="block" data-index="11"
				style="background-color: rgb(39, 46, 124); color: rgb(39, 46, 124)">
				<span class="block-description">muted dark blue</span>
			</div>
			<div class="block selected" data-index="12"
				style="background-color: rgb(95, 131, 148); color: rgb(95, 131, 148)">
				<span class="block-description">pale midtone cyan</span>
			</div>
			<div class="block" data-index="13"
				style="background-color: rgb(104, 68, 55); color: rgb(104, 68, 55)">
				<span class="block-description">pale dark red</span>
			</div>
			<div class="block" data-index="14"
				style="background-color: rgb(216, 152, 34); color: rgb(216, 152, 34)">
				<span class="block-description">rich midtone orange</span>
			</div>
			<div class="block" data-index="15"
				style="background-color: rgb(254, 238, 137); color: rgb(254, 238, 137)">
				<span class="block-description">rich light yellow</span>
			</div>
			<div class="block selected" data-index="16"
				style="background-color: rgb(198, 115, 109); color: rgb(198, 115, 109)">
				<span class="block-description">muted midtone red</span>
			</div>
			<div class="block" data-index="17"
				style="background-color: rgb(243, 209, 12); color: rgb(243, 209, 12)">
				<span class="block-description">rich midtone yellow</span>
			</div>
			<div class="block" data-index="18"
				style="background-color: rgb(197, 171, 228); color: rgb(197, 171, 228)">
				<span class="block-description">muted light violet</span>
			</div>
			<div class="block" data-index="19"
				style="background-color: rgb(144, 113, 131); color: rgb(144, 113, 131)">
				<span class="block-description">neutral midtone magenta</span>
			</div>
			<div class="block" data-index="20"
				style="background-color: rgb(190, 246, 246); color: rgb(190, 246, 246)">
				<span class="block-description">rich light cyan</span>
			</div>

			<div class="block" data-index="26"
				style="background-color: rgb(218, 7, 46); color: rgb(218, 7, 46)">
				<span class="block-description">rich midtone magenta</span>
			</div>
			<div class="block" data-index="27"
				style="background-color: rgb(164, 130, 132); color: rgb(164, 130, 132)">
				<span class="block-description">neutral midtone red</span>
			</div>
			<div class="block selected" data-index="28"
				style="background-color: rgb(254, 170, 130); color: rgb(254, 170, 130)">
				<span class="block-description">rich light red</span>
			</div>
			<div class="block" data-index="29"
				style="background-color: rgb(67, 167, 160); color: rgb(67, 167, 160)">
				<span class="block-description">muted midtone cyan</span>
			</div>
			<div class="block" data-index="30"
				style="background-color: rgb(171, 31, 6); color: rgb(171, 31, 6)">
				<span class="block-description">rich dark red</span>
			</div>
			<div class="block selected" data-index="31"
				style="background-color: rgb(84, 17, 193); color: rgb(84, 17, 193)">
				<span class="block-description">rich midtone violet</span>
			</div>
			<div class="block" data-index="32"
				style="background-color: rgb(219, 214, 170); color: rgb(219, 214, 170)">
				<span class="block-description">pale light yellow</span>
			</div>
			<div class="block" data-index="33"
				style="background-color: rgb(65, 101, 139); color: rgb(65, 101, 139)">
				<span class="block-description">pale dark blue</span>
			</div>
			<div class="block" data-index="34"
				style="background-color: rgb(201, 198, 121); color: rgb(201, 198, 121)">
				<span class="block-description">muted midtone yellow</span>
			</div>
			<div class="block" data-index="35"
				style="background-color: rgb(251, 221, 169); color: rgb(251, 221, 169)">
				<span class="block-description">rich light orange</span>
			</div>
			<div class="block" data-index="37"
				style="background-color: rgb(120, 19, 178); color: rgb(120, 19, 178)">
				<span class="block-description">rich dark violet</span>
			</div>
			<div class="block" data-index="38"
				style="background-color: rgb(209, 152, 102); color: rgb(209, 152, 102)">
				<span class="block-description">muted midtone orange</span>
			</div>
			<div class="block" data-index="39"
				style="background-color: rgb(56, 94, 100); color: rgb(56, 94, 100)">
				<span class="block-description">pale dark cyan</span>
			</div>
			<div class="block" data-index="40"
				style="background-color: rgb(199, 147, 164); color: rgb(199, 147, 164)">
				<span class="block-description">pale midtone magenta</span>
			</div>
			<div class="block" data-index="41"
				style="background-color: rgb(115, 211, 201); color: rgb(115, 211, 201)">
				<span class="block-description">muted midtone cyan</span>
			</div>
			<div class="block" data-index="42"
				style="background-color: rgb(49, 60, 48); color: rgb(49, 60, 48)">
				<span class="block-description">neutral dark green</span>
			</div>
			<div class="block" data-index="43"
				style="background-color: rgb(178, 155, 236); color: rgb(178, 155, 236)">
				<span class="block-description">muted light violet</span>
			</div>
			<div class="block" data-index="44"
				style="background-color: rgb(88, 53, 68); color: rgb(88, 53, 68)">
				<span class="block-description">pale dark magenta</span>
			</div>
			<div class="block" data-index="45"
				style="background-color: rgb(215, 147, 37); color: rgb(215, 147, 37)">
				<span class="block-description">rich midtone orange</span>
			</div>
			<div class="block" data-index="46"
				style="background-color: rgb(127, 182, 170); color: rgb(127, 182, 170)">
				<span class="block-description">pale midtone green</span>
			</div>
			<div class="block" data-index="47"
				style="background-color: rgb(230, 243, 185); color: rgb(230, 243, 185)">
				<span class="block-description">rich light yellow</span>
			</div>
			<div class="block" data-index="48"
				style="background-color: rgb(156, 151, 66); color: rgb(156, 151, 66)">
				<span class="block-description">muted midtone yellow</span>
			</div>
			<div class="block" data-index="49"
				style="background-color: rgb(137, 59, 57); color: rgb(137, 59, 57)">
				<span class="block-description">muted dark red</span>
			</div>
			<div class="block" data-index="50"
				style="background-color: rgb(178, 143, 189); color: rgb(178, 143, 189)">
				<span class="block-description">pale midtone magenta</span>
			</div>
			<div class="block" data-index="51"
				style="background-color: rgb(181, 194, 93); color: rgb(181, 194, 93)">
				<span class="block-description">muted midtone yellow</span>
			</div>
			<div class="block" data-index="52"
				style="background-color: rgb(160, 224, 220); color: rgb(160, 224, 220)">
				<span class="block-description">muted light cyan</span>
			</div>
			<div class="block" data-index="53"
				style="background-color: rgb(153, 94, 95); color: rgb(153, 94, 95)">
				<span class="block-description">pale midtone red</span>
			</div>
			<div class="block" data-index="54"
				style="background-color: rgb(245, 236, 165); color: rgb(245, 236, 165)">
				<span class="block-description">rich light yellow</span>
			</div>
			<div class="block" data-index="55"
				style="background-color: rgb(175, 61, 139); color: rgb(175, 61, 139)">
				<span class="block-description">muted midtone magenta</span>
			</div>
			<div class="block" data-index="56"
				style="background-color: rgb(216, 197, 170); color: rgb(216, 197, 170)">
				<span class="block-description">pale light orange</span>
			</div>
			<div class="block" data-index="57"
				style="background-color: rgb(52, 188, 90); color: rgb(52, 188, 90)">
				<span class="block-description">muted midtone green</span>
			</div>
			<div class="block" data-index="58"
				style="background-color: rgb(181, 248, 152); color: rgb(181, 248, 152)">
				<span class="block-description">rich light green</span>
			</div>
			<div class="block" data-index="59"
				style="background-color: rgb(136, 60, 22); color: rgb(136, 60, 22)">
				<span class="block-description">rich dark red</span>
			</div>
			<div class="block" data-index="60"
				style="background-color: rgb(108, 200, 111); color: rgb(108, 200, 111)">
				<span class="block-description">muted midtone green</span>
			</div>
			<div class="block" data-index="61"
				style="background-color: rgb(23, 81, 82); color: rgb(23, 81, 82)">
				<span class="block-description">muted dark cyan</span>
			</div>
			<div class="block" data-index="62"
				style="background-color: rgb(55, 57, 81); color: rgb(55, 57, 81)">
				<span class="block-description">neutral dark blue</span>
			</div>
			<div class="block" data-index="63"
				style="background-color: rgb(145, 152, 186); color: rgb(145, 152, 186)">
				<span class="block-description">pale midtone blue</span>
			</div>
			<div class="block" data-index="64"
				style="background-color: rgb(189, 149, 253); color: rgb(189, 149, 253)">
				<span class="block-description">rich light violet</span>
			</div>
			<div class="block" data-index="65"
				style="background-color: rgb(198, 213, 212); color: rgb(198, 213, 212)">
				<span class="block-description">neutral light cyan</span>
			</div>
			<div class="block" data-index="66"
				style="background-color: rgb(14, 110, 162); color: rgb(14, 110, 162)">
				<span class="block-description">rich dark cyan</span>
			</div>
			<div class="block" data-index="67"
				style="background-color: rgb(74, 21, 198); color: rgb(74, 21, 198)">
				<span class="block-description">rich midtone violet</span>
			</div>
			<div class="block" data-index="68"
				style="background-color: rgb(188, 111, 144); color: rgb(188, 111, 144)">
				<span class="block-description">pale midtone magenta</span>
			</div>
			<div class="block" data-index="69"
				style="background-color: rgb(166, 155, 175); color: rgb(166, 155, 175)">
				<span class="block-description">neutral midtone violet</span>
			</div>
			<div class="block" data-index="70"
				style="background-color: rgb(144, 87, 1); color: rgb(144, 87, 1)">
				<span class="block-description">rich dark orange</span>
			</div>
			<div class="block" data-index="71"
				style="background-color: rgb(248, 144, 7); color: rgb(248, 144, 7)">
				<span class="block-description">rich midtone orange</span>
			</div>
			<div class="block" data-index="72"
				style="background-color: rgb(211, 178, 220); color: rgb(211, 178, 220)">
				<span class="block-description">pale light magenta</span>
			</div>
			<div class="block" data-index="73"
				style="background-color: rgb(218, 101, 132); color: rgb(218, 101, 132)">
				<span class="block-description">muted midtone magenta</span>
			</div>
			<div class="block" data-index="74"
				style="background-color: rgb(6, 223, 226); color: rgb(6, 223, 226)">
				<span class="block-description">rich midtone cyan</span>
			</div>
			<div class="block" data-index="75"
				style="background-color: rgb(185, 102, 252); color: rgb(185, 102, 252)">
				<span class="block-description">rich midtone violet</span>
			</div>
			<div class="block" data-index="76"
				style="background-color: rgb(32, 30, 91); color: rgb(32, 30, 91)">
				<span class="block-description">muted dark blue</span>
			</div>
			<div class="block" data-index="77"
				style="background-color: rgb(182, 163, 114); color: rgb(182, 163, 114)">
				<span class="block-description">pale midtone orange</span>
			</div>
			<div class="block" data-index="78"
				style="background-color: rgb(202, 202, 214); color: rgb(202, 202, 214)">
				<span class="block-description">neutral light blue</span>
			</div>
			<div class="block" data-index="79"
				style="background-color: rgb(52, 17, 204); color: rgb(52, 17, 204)">
				<span class="block-description">rich midtone blue</span>
			</div>
			<div class="block" data-index="80"
				style="background-color: rgb(206, 238, 188); color: rgb(206, 238, 188)">
				<span class="block-description">muted light green</span>
			</div>
			<div class="block" data-index="81"
				style="background-color: rgb(101, 178, 217); color: rgb(101, 178, 217)">
				<span class="block-description">muted midtone cyan</span>
			</div>
			<div class="block" data-index="82"
				style="background-color: rgb(148, 196, 253); color: rgb(148, 196, 253)">
				<span class="block-description">rich light blue</span>
			</div>
			<div class="block" data-index="83"
				style="background-color: rgb(226, 226, 196); color: rgb(226, 226, 196)">
				<span class="block-description">pale light yellow</span>
			</div>
			<div class="block" data-index="84"
				style="background-color: rgb(201, 162, 85); color: rgb(201, 162, 85)">
				<span class="block-description">muted midtone orange</span>
			</div>
			<div class="block" data-index="85"
				style="background-color: rgb(17, 241, 245); color: rgb(17, 241, 245)">
				<span class="block-description">rich midtone cyan</span>
			</div>
			<div class="block" data-index="86"
				style="background-color: rgb(93, 114, 84); color: rgb(93, 114, 84)">
				<span class="block-description">neutral dark green</span>
			</div>
			<div class="block" data-index="87"
				style="background-color: rgb(244, 84, 193); color: rgb(244, 84, 193)">
				<span class="block-description">rich midtone magenta</span>
			</div>
			<div class="block" data-index="88"
				style="background-color: rgb(202, 213, 149); color: rgb(202, 213, 149)">
				<span class="block-description">muted light yellow</span>
			</div>
			<div class="block" data-index="89"
				style="background-color: rgb(67, 54, 53); color: rgb(67, 54, 53)">
				<span class="block-description">neutral dark red</span>
			</div>
			<div class="block" data-index="90"
				style="background-color: rgb(217, 215, 112); color: rgb(217, 215, 112)">
				<span class="block-description">muted midtone yellow</span>
			</div>
			<div class="block" data-index="91"
				style="background-color: rgb(136, 104, 53); color: rgb(136, 104, 53)">
				<span class="block-description">muted dark orange</span>
			</div>
			<div class="block" data-index="92"
				style="background-color: rgb(61, 10, 149); color: rgb(61, 10, 149)">
				<span class="block-description">rich dark violet</span>
			</div>
			<div class="block" data-index="93"
				style="background-color: rgb(179, 102, 83); color: rgb(179, 102, 83)">
				<span class="block-description">pale midtone red</span>
			</div>
			<div class="block" data-index="94"
				style="background-color: rgb(240, 44, 57); color: rgb(240, 44, 57)">
				<span class="block-description">rich midtone red</span>
			</div>
			<div class="block" data-index="95"
				style="background-color: rgb(116, 135, 63); color: rgb(116, 135, 63)">
				<span class="block-description">pale dark green</span>
			</div>
		</div>
	</div>
</body>
</html>
