<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIVIVIEW - 프로필 설정</title>

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="${path}/resources/css/profile/profileEdit.css">

</head>
<body>
	<div class="wrapper">
		<div>
			<h2>프로필 설정</h2>
			<div class="profileHeader">
				<p class="profileName">서림 님</p>
				<img src="${path}/resources/img/member/profile.png" width="30" height="30" />
			</div>
			<div class="profile">
				<table>
					<tr>
						<td class="first" rowspan="2"><i class='bx bxs-user'></i></td>
						<td><p class="title">프로필 변경</p></td>
					</tr>
					<tr>
						<td><p class="sub">프로필의 사진과 이름을 변경할 수 있습니다.</p></td>
					</tr>
				</table>
				<hr />
				<table>
					<tr>
						<td class="first" rowspan="2"><i class='bx bxs-envelope'></i></td>
						<td><p class="title">이메일</p></td>
					</tr>
					<tr>
						<td><p class="sub">abcdef123@gmail.com</p></td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="optional">
			<p>설정</p>
			<div class="optionalList">
				<table> <!-- 언어 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bx-game' ></i></td>
						<td><p class="title">언어</p></td>
					</tr>
					<tr>
						<td><p class="sub">화면 표시 및 음성용 언어 설정</p></td>
					</tr>
				</table>
				<hr />
				<table> <!-- 시청 제한 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bx-block'></i></td>
						<td><p class="title">시청 제한</p></td>
					</tr>
					<tr>
						<td><p class="sub">관람등급 및 콘텐츠 제한 변경</p></td>
					</tr>
				</table>
				<hr />
				<table> <!-- 자막 표시 설정 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bx-text'></i></td>
						<td><p class="title">자막 표시 설정</p></td>
					</tr>
					<tr>
						<td><p class="sub">자막 표시 방식 맞춤화</p></td>
					</tr>
				</table>
				<hr />
				<table> <!-- 재생 설정 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bx-movie-play'></i></td>
						<td><p class="title">재생 설정</p></td>
					</tr>
					<tr>
						<td><p class="sub">자동 재생, 오디오, 화질 설정</p></td>
					</tr>
				</table>
				<hr />
				<table> <!-- 알림 설정 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bx-bell'></i></td>
						<td><p class="title">알림 설정</p></td>
					</tr>
					<tr>
						<td><p class="sub">이메일, 문자, 푸시 알림 관리</p></td>
					</tr>
				</table>
				<hr />
				<table> <!-- 시청 기록 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bxs-playlist'></i></td>
						<td><p class="title">시청 기록</p></td>
					</tr>
					<tr>
						<td><p class="sub">시청 기록 및 평가 관리</p></td>
					</tr>
				</table>
				<hr />
				<table> <!-- 개인 정보 -->
					<tr>
						<td class="first" rowspan="2"><i class='bx bx-shield-quarter'></i></td>
						<td><p class="title">개인 정보 및 데이터 설정</p></td>
					</tr>
					<tr>
						<td><p class="sub">개인 정보 이용 관리</p></td>
					</tr>
				</table>
				<hr />
				<div id="payment" style="cursor: pointer;">
					<table> <!-- 결제 -->
						<!-- 멤버십 가입 내역이랑 만료 날짜만 나오는걸로 수정 -->
						<tr>
							<td class="first" rowspan="2"><i class='bx bxs-credit-card'></i></td>
							<td><p class="title">멤버십</p></td>
						</tr>
						<tr>
							<td><p class="sub">현재 결제한 멤버십 등급</p></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		
		<div class="profileDel">
			<i class='bx bxs-trash'></i><p>프로필 삭제</p>
		</div>
			<p class="warnning">기본 프로필은 삭제할 수 없습니다.<p>
			<!-- ajax 써야해서 임시로 만듦 -->
			<button id="openModal">프로필 삭제 모달</button>
			
			<!-- 모달을 포함할 빈 div -->
			<div id="modalContainer"></div>
	</div>
	
</body>

<script>
	document.getElementById("payment").addEventListener("click", function() {
		window.location.href="${path}/member/payment";
	});
</script>

</html>
<%@ include file="../common/footer.jsp" %>