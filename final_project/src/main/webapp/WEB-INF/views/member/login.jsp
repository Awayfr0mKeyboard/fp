<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIVIVIEW - 로그인</title>

<link rel="stylesheet" href="${path}/resources/css/member/login.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>

	<div class="wrapper">
		<form action="login.sh" method="POST">
			<h1>Login</h1>
			<div class="input-box">
				<input type="text" placeholder="Email or PhoneNumber" name="id" required />
                <i class='bx bxs-user'></i>
			</div>
			<div class="input-box">
				<input type="password" placeholder="Password" name="pass" required />
                <i class='bx bxs-lock-alt' ></i>
			</div>
		</form>

        <div class="remember">
        	<!-- 자동 로그인 -->
            <label><input type="checkbox" />Remember Me?</label>
            <!-- 비밀 번호 찾기 -->
            <a href="${path}/member/find">Forgot Password?</a>
        </div>
    
        <button type="submit" class="btn">Login</button>
    
        <div class="register">
            <p>Don't have an account? <a href="${path}/member/join">Register</a></p>
        </div>
	</div>

</body>


</html>
<%@ include file="../common/footer.jsp" %>