<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VVV - 멤버십 결제</title>

<link rel="stylesheet" href="${path}/resources/css/payment.css">

</head>
<body>

	<div class="wrapper">
		<h1>원하는 멤버십을 선택하세요.</h1>
		
		<!-- membership container -->
		<div class="membership">
			<div class="commercial">
				<p>광고형 스탠다드</p>
				<p>1080p</p>
			</div>
			<div class="standard">
				<p>스탠다드</p>
				<p>1080p</p>
			</div>
			<div class="premium">
				<p>프리미엄</p>
				<p>4K + HDR</p>
			</div>
		</div>
		
		<div class="commercialContent">
			<ul>
				<li>
					<div class="first">월 요금</div>
					<div class="second">5,500원</div>
				</li>
				<li>
					<div class="first">화질과 음질</div>
					<div class="second">좋음</div>
				</li>
				<li>
					<div class="first">해상도</div>
					<div class="second">1080p(FULL HD)</div>
				</li>
				<li>
					<!-- 프로필 최대 2개 생성 가능 -->
					<div class="first">동시 접속자 수</div>
					<div class="second">2</div>
				</li>
				<li>
					<div class="first">광고</div>
					<div class="second">생각보다 적은 광고</div>
				</li>
			</ul>
		</div>
		
		<div class="standardContent">
			<ul>
				<li>
					<div class="first">월 요금</div>
					<div class="second">13,500원</div>
				</li>
				<li>
					<div class="first">화질과 음질</div>
					<div class="second">좋음</div>
				</li>
				<li>
					<div class="first">해상도</div>
					<div class="second">1080p(FULL HD)</div>
				</li>
				<li>
					<!-- 프로필 최대 2개 생성 가능 -->
					<div class="first">동시 접속자 수</div>
					<div class="second">2</div>
				</li>
				<li>
					<div class="first">광고</div>
					<div class="second">무광고</div>
				</li>
			</ul>
		</div>
		
		<div class="premiumContent">
			<ul>
				<li>
					<div class="first">월 요금</div>
					<div class="second">17,000원</div>
				</li>
				<li>
					<div class="first">화질과 음질</div>
					<div class="second">가장 좋음</div>
				</li>
				<li>
					<div class="first">해상도</div>
					<div class="second">4K(UHD) + HDR</div>
				</li>
				<li>
					<div class="first">공간 음향(아머시브 사운드)</div>
					<div class="second">포함</div>
				</li>
				<li>
					<!-- 프로필 최대 4개 생성 가능 -->
					<div class="first">동시 접속자 수</div>
					<div class="second">4</div>
				</li>
				<li>
					<div class="first">광고</div>
					<div class="second">무광고</div>
				</li>
			</ul>
		</div>
	
		<button class="nextBtn">다음</button>
	</div>

</body>

<script>
	document.querySelector(".commercial").addEventListener("click", function() {
		resetHalo();
		this.classList.add("halo");
		document.querySelector(".commercialContent").style.display = "block";
		document.querySelector(".standardContent").style.display = "none";
		document.querySelector(".premiumContent").style.display = "none";
	});
	
	document.querySelector(".standard").addEventListener("click", function() {
		resetHalo();
		this.classList.add("halo");
		document.querySelector(".standardContent").style.display = "block";
		document.querySelector(".commercialContent").style.display = "none";
		document.querySelector(".premiumContent").style.display = "none";
	});
	
	document.querySelector(".premium").addEventListener("click", function() {
		resetHalo();
		this.classList.add("halo");
		document.querySelector(".premiumContent").style.display = "block";
		document.querySelector(".commercialContent").style.display = "none";
		document.querySelector(".standardContent").style.display = "none";
	});
	
	function resetHalo() {
	    document.querySelector(".commercial").classList.remove("halo");
	    document.querySelector(".standard").classList.remove("halo");
	    document.querySelector(".premium").classList.remove("halo");
	}
</script>

</html>
<%@ include file="../common/footer.jsp" %>