<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VVV - 회원 탈퇴</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;	
	font-family: "Poppins", sans-serif;
	color: white;
}

body {
	margin-top: 100px;
	background: #000000;
	min-height: 80vh;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.container {
	display: flex;
	flex: 1;
	height: auto;
	margin: auto;
}
	
.wrapper {
	width: 600px;
}

/* 왼쪽 사이드바 */
.sideMenu {
	width: 200px;
	padding-top: 10px;
}

.sideMenu ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.sideMenu ul li {
	margin: 10px 0;
}

.sideMenu ul li a {
	color: #fff;
	text-decoration: none;
	padding: 5px 10px;
	display: block;
}

.uppperBox {
	height: 110px;
	margin: 45px 0px 0px;
}

.upperBox > .title {
	font-size: 36px;
	font-weight: 600;
}

.upperBox > .caution {
	margin-bottom: 20px;
	color: gray;
	font-weight: 500;
	
}

.lowerBox {
	height: 160px;
}

.inner1 {
	height: 80px;
	flex-direction: column;
	justify-content: center;
	padding-top: 20px;
}

.inner1 > p {
	text-align: center;
}

.inner1 > p > span {
	font-weight: 900;
	color: #ffa200;
}

.inner2 {
	height: 160px;
	border: 1px solid gray;
	display: flex;
	align-items: center;
	justify-content: center;
}

.inner2 > input[type=text] {
	width: 300px;
	height: 40px;
	margin-right: 10px;
	padding-left: 10px;
	font-size: 30px;
	color: #000000;
}

.inner2 > input[type=submit] {
	width: 120px;
	height: 40px;
	font-size: 24px;
	color: #fff;
	background: #ffa200;
	border: none;
	outline: none;
	border-radius: 40px;
	box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	cursor: pointer;
}

</style>

<script>
	function withdrawWord() {
		var button = document.querySelector('input[type="submit"]');
		var input = document.querySelector('input[name="withdrawWord"]').value.trim();
		var word = document.getElementById("word").textContent.trim();
		
		if (input === word) {
			button.disabled = false;
		} else {
			button.disabled = true;
		}
	}
</script>

</head>
<body>
	
	<div class="container">
		<nav class="sideMenu">
			<ul>
				<li><a href="${path}/home">VIVIVIEW로 돌아가기</a></li>
				<li><a href="#">멤버십</a></li>
				<li><a href="#">개인정보 수정</a></li>
				<li><a href="#">비밀번호 찾기</a></li>
				<li><a href="${path}/member/withdraw">회원 탈퇴</a></li>
			</ul>
		</nav>

		<form action="" method="POST">
			<div class="wrapper">
				<div class="upperBox">
					<p class="title">회원 탈퇴</p>
					<p class="caution">탈퇴 시에 주의사항을 꼭! 확인해 주시기 바랍니다.</p>
				</div>
				<hr/>
				<div class="lowerBox">
					<div class="inner1">
						<p>회원 탈퇴를 진행하기 위해 아래의 글자를 정확하게 입력해 주세요.</p>
						<p><span id="word">회원탈퇴</span>를 바르게 입력해주세요.</p>
					</div>
					<div class="inner2">
						<input type="text" name="withdrawWord" required oninput="withdrawWord()">
						<input type="submit" value="확인" disabled>
					</div>
				</div>
			</div>
		</form>
	</div>

</body>
</html>

<%@ include file="../common/footer.jsp" %>