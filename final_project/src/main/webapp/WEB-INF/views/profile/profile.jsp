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
        <!-- 프로필 정보를 담는 BOX -->
        <div class="profileBox">
            <c:if test="${not empty profile}">
                <!-- 프로필 카드 -->
                <div class="profileCard">
                    <c:choose>
                        <c:when test="${profile.imageNum != null}">
                            <img src="${path}/profileImage/${profile.imageNum}" alt="Profile Image" class="profileImg" />
                        </c:when>
                        <c:otherwise>
                            <img src="${path}/resources/img/member/defaultProfile.png" alt="Default Profile Image" class="profileImg" />
                        </c:otherwise>
                    </c:choose>
                    <div class="profileInfo">
                        <p>${profile.name}</p>
                        <c:choose>
                            <c:when test="${profile.pass != null}">
                                <div class="secure">
                                    <i class='bx bxs-lock-alt'></i>
                                </div>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</section>

</body>
</html>

<%@ include file="../common/footer.jsp" %>