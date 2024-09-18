<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="${path}/resources/css/header_style.css"> 

<c:set var="path" value="${pageContext.request.contextPath}" scope="session"/>
    
    <!-- iconbox 설정 -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <!-- 네비게이션 바 -->
  <header class="header">
    <a href="${path}/home"><img src="${path}/resources/images/logo.png" alt="Logo"> <!-- 로고 이미지 + 홈으로 이동 --> </a>
    <nav class="nav-links">
      <a href="#">드라마</a> 
      <a href="${path}/contents/movies/movies_detail">영화</a> <!-- 세부메뉴 -->
      <a href="#">예능</a>
      <a href="#">다큐멘터리</a>
      <a href="#">커뮤니티</a>
      <i class='bx bx-search'></i><!-- search 아이콘 --> <a href="#">검색</a>
      
      <c:choose>
      	<c:when test="${!empty sessionScope.member}">
      		<a href="${path}/member/myPage?email=${sessionScope.member.email}">${member.email}님의 마이페이지</a>
      		
      		<div class="profileMenu">
		    	<!-- 현재 내가 접속한 프로필 -->
		    	<c:if test="${!empty currentProfile}">
	      			<div class="currentProfile" >
			      		<img src="${currentProfile.image}" class="currentImg">
						<span class="currentName" style="color: #fff">${currentProfile.name} 님</span>
					</div>
					
					<!-- 드롭다운 메뉴 -->
				    <div class="Dropdown">
			      		<div class="dropdownProfile" >  				
							<!-- 프로필 변경, 프로필 수정 -->
							<a href="${path}/profile/profile?email=${currentProfile.email}">프로필 변경</a>
							<a href="${path}/profile/profileEdit?num=${currentProfile.num}">프로필 수정</a>
			      		</div>
		      		</div>
	      		</c:if>
      		</div>
      		<a href="#">로그아웃</a>
      	</c:when>
      		<c:otherwise>
			      <a href="${path}/member/login">로그인</a>
			      <a href="${path}/member/withdraw">마이 페이지</a> <!-- 세부메뉴 -->
      		</c:otherwise>
      </c:choose>
    </nav>
  </header>
  
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>


</script>