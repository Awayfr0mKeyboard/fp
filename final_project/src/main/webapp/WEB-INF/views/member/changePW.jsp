<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIVIVIEW - 비밀번호 변경</title>

<!-- 네비게이션 바 CSS -->
<link rel="stylesheet" href="${path}/resources/css/sideMenu.css">
<!-- section(비밀번호 확인) CSS -->
<link rel="stylesheet" href="${path}/resources/css/changePW.css">

</head>
<body>
<section>
    <!-- 네비게이션 바 -->
    <nav class="sideMenu">
        <ul>
            <li><a href="${path}/home">VIVIVIEW로 돌아가기</a></li>
            <li><a href="${path}/member/membership">멤버십</a></li>
            <li><a href="${path}/member/beforeMyPage">개인정보 수정</a></li>
            <li><a href="${path}/member/changePW">비밀번호 변경</a></li>
            <li><a href="${path}/member/beforeWithdraw">회원 탈퇴</a></li>
        </ul>
    </nav>
    
    <!-- 이거 table 써서 삐꾸난거 같으니까 내일 table 빼고 다른걸로 수정 -->
	
	<form action="" method="POST">
		<div class="wrapper">
			<div class="upperBox">
				<p class="title">비밀번호 변경</p>
				<p class="caution">비밀번호는 주기적으로 변경해주시기 바랍니다.</p>
			</div>
			<hr/>
			<table style="width: 100%">
				<!-- 테이블 크기 설정 -->
				<colgroup>
					<col style="width: 30%">
					<col style="width: 70%">
				</colgroup>
				
				<!-- 비밀번호 변경 -->
				<tr>
					<td>현재 비밀번호</td>
					<td>
						<input type="password" name="current" id="currentPW" required>
					</td>
				</tr>
				<tr>
					<td>새 비밀번호</td>
					<td>
						<input type="password" name="newPW" id="newPW" required onkeyup="checkPW()">
						<p class="pwMassage">영문/숫자/특수문자를 조합하여 10~16자 이내로 입력해주세요.</p>
					</td>
				</tr>
				<tr>
					<td>새 비밀번호 확인</td>
					<td>
						<input type="password" name="checkPW" id="checkPW" required onkeyup="pwMatch()">
						<p class="checkPWMessage">비밀번호를 다시 한 번 입력해주세요.</p>
					</td>
				</tr>
			</table>
			
			<!-- 버튼 박스 -->
			<div class="btnBox">
				<input type="submit" id="check" value="확인">
				<input type="button" id="remove" value="새로 입력" onclick="clearForm()">
			</div>
			
			<!-- 권고사항 -->
			<div class="recommend">
				<p class="notice">📌 안전하게 비밀번호를 관리하는 법</p>
				<p>1. 이용하시는 사이트들의 아이디/비밀번호를 가급적 다르게 설정해주세요.</p>
				<p>2. 최소 3개월에 한 번씩 주기적으로 비밀번호를 변경한다면 해킹의 위험을 줄일 수 있습니다.</p>
				<p>3. 사용자 이외의 다른 사람들과 아이디 및 비밀번호를 함께 사용하면 안됩니다.</p>
			</div>
		</div>
	</form>
</section>
<script>
	// 새로 입력 버튼
	function clearForm() {
		document.getElementById("currentPW").value = "";
		document.getElementById("newtPW").value = "";
		document.getElementById("checkPW").value = "";
		document.getElementById("pwMessage").innerText = "영문/숫자/특수문자를 조합하여 10~16자로 입력해주세요.";
		document.getElementById("pwMessage").style.color = "";
		document.getElementById("checkPWMessage").innerText = "비밀번호를 다시 한 번 입력해 주세요.";
		document.getElementById("checkPWMessage").style.color = "";
	}
	
	// 새 비밀번호 확인 (currentPW != newPW)
	function checkPW() {
		var currentPW = document.getElementById("currentPW").value;
		var newPW = document.getElementById("newPW").value;
		var message = document.getElementById("pwMessage");
		
		// 비밀번호 제한 조건
		var length = /^.{10,16}$/;
		var criteria = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[@$!%*?&]).{10,16}$/;
		
		if () {
			message.innerText = "비밀번호는 10~16자까지 입력 가능합니다.";
			message.style.color = "";
		} else if () {
			message.innerText = "영문/숫자/특수문자 중 2가지 이상 조합하셔야 합니다.";
			message.style.color = "";
		} else if () {
			message.innerText = "현재 사용 중인 비밀번호로 변경할 수 없습니다.";
			message.style.color = "";
		} else {
			message.innerText = "사용 가능한 비밀번호입니다.";
			message.style.color = "ffa200";
		}
		
	}
	
	// 새 비밀번호 확인 (newPW == checkPW)
	function pwMatch() {
		var newPW = document.getElementById("newPW").value;
		var checkPW = document.getElementById("checkPW").value;
		var message = document.getElementById("checkPWMessage");
		
		if (newPW == checkPW) {
			message.innerText = "입력한 비밀번호가 일치합니다.";
			message.style.color = "ffa200";
		} else {
			message.innerText = "입력한 비밀번호가 서로 일치하지 않습니다.";
			message.style.color = "";
		}
	}
</script>
	
</body>
</html>
<%@ include file="../common/footer.jsp" %>