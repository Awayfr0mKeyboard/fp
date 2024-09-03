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
</head>
<body>

	<div>
		<nav>
			<ul>
				<li><a href="#">VVVIEW로 돌아가기</a></li>
				<li><a href="#">멤버십</a></li>
				<li><a href="#">개인정보 수정</a></li>
				<li><a href="#">비밀번호 찾기</a></li>
				<li><a href="${path}/member/withdraw">회원 탈퇴</a></li>
			</ul>
		</nav>
	</div>

	<form action="" method="POST">
		<div class="wrapper">
			<div class="upperBox">
				<p>회원 탈퇴</p>
				<p>탈퇴 시에 주의사항을 꼭! 확인해 주시기 바랍니다.</p>
			</div>
			<hr/>
			<div class="lowerBox">
				<div class="inner1">
					<p>회원 탈퇴를 진행하기 위해 아래의 글자를 정확하게 입력해 주세요.</p>
					<p><span>회원탈퇴</span>를 바르게 입력해주세요.</p>
				</div>
				<div class="inner2">
					<input type="text" name="withdrawWord" required>
					<input type="submit" value="확인">
				</div>
			</div>
		</div>
	</form>

</body>
</html>
<%@ include file="../common/footer.jsp" %>