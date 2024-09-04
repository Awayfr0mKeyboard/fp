<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VVV - 마이 페이지</title>
</head>
<body>

	<div>
		<nav>
			<ul>
				<li><a href="${path}/home">VIVIVIEW로 돌아가기</a></li>
				<li><a href="#">멤버십</a></li>
				<li><a href="#">개인정보 수정</a></li>
				<li><a href="#">비밀번호 찾기</a></li>
				<li><a href="${path}/member/withdraw">회원 탈퇴</a></li>
			</ul>
		</nav>
	</div>

</body>
</html>
<%@ include file="../common/footer.jsp" %>