<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIVIVIEW - 프로필 선택</title>

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>

<section>
	<div class="wrapper">
		<!-- 전체 프로필을 담는 BOX -->
		<div class="profileBox">
		
			<c:forEach var="profile" items="">
				<div class="profileCard">
					<img src="" alt="Profile Image" class="profileImg" />
					<div class="profileInfo">
						<!-- 프로필 이름 ${profile.name} -->
						<p>프로필 이름</p>
						<c:choose>
							<c:when test="">
								<!-- 프로필에 비밀번호가 있는 경우 -->
								<div class="secure">
									<i class='bx bxs-lock-alt'></i>
								</div>
							</c:when>
						</c:choose>
					</div>
				</div>
			</c:forEach>
			
			<!-- 프로필 생성 (프로필 최대 개수가 아니라면 표시) -->
			<c:if test="">
				<div class="createProfile">
					<!-- 모달창으로 생성 -->
					<img src="${path}/resources/img/member/profileAdd.png" alt="Create Profile" class="profileImg" />
				</div>
			</c:if>
		</div>
	</div>
</section>

</body>
</html>

<%@ include file="../common/footer.jsp" %>