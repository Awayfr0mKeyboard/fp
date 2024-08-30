<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로필 설정 - viviview</title>
</head>
<body>
	<div class=wrapper>
		<div>
			<h2>프로필 설정</h2>
			<p>서림 님</p>
			<div>
				<div>
					<p>프로필 변경</p>
					<span>프로필의 사진과 이름을 변경할 수 있습니다.</span>
				</div>
					<hr />
				<div>>
					<p>이메일</p>
					<span>abcdef123@gmail.com</span>
					<i class='bx bxs-envelope'></i>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ include file="../common/footer.jsp" %>