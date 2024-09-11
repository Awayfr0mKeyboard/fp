<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../common/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>VIVIVIEW - 프로필 선택</title>

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="${path}/resources/css/profile/profile.css">

</head>
<body>

<section>
    <div class="wrapper">
    	<div class="upperBox">
    		<p class="title">프로필 선택</p>
    		<p class="caution">시청할 프로필을 선택해주세요.</p>
    	</div>
    	<hr/>
    	<div class="profileList">
	    	<!-- 프로필 목록 표시 -->
	    	<div class="profiles">
	    		<!-- 프로필 이미지 칸 -->
	    		<div class="profileCard">
	    			프로필 이미지
	    		</div>
                <!-- 프로필 이름 및 보안 정보 -->
                <div class="profileInfo">
                   	<!-- 프로필 이름칸 -->
                   	<p class="profileName"><i class='bx bxs-lock-alt'></i></p>
                 </div>
	    	</div>
	    	<!-- 이 div가 눌리면 모달창이 열리게 -->
	    	<div class="createProfile">
            	<div class="profileCard">
            		<img src="${path}/resources/img/profile/profileAdd.png">
            	</div>
            	<div class="profileInfo">
                	<p class="profileName">프로필 생성</p>
                </div>
            </div>
    	</div>
    </div>
</section>
<%@ include file="/WEB-INF/views/profile/create.jsp" %>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(function() {
		// 모달 관련 요소
		var modal = $("#profileModal");
		var btn = $(".createProfile");
		var span = $("#closeModal");
		var form = $("#createProfileForm");
		
		// 모달 열기
		btn.on("click", function() {
			console.log("Create profile button clicked!");
			modal.show();
		});
		
		// 모달 닫기
		span.on("click", function() {
			modal.hide();
		});
		
		// 외부 클릭 시 모달 닫기
		$(window).on("click", function(event) {
			if ($(event.target).is(modal)) {
				modal.hide();
			}
		});
		
		// 폼 제출 및 AJAX 처리
		form.on("submit", function(event) {
			// 폼 제출 기본 동작 방지
			event.preventDefault();
			var formData = new FormData(this);
			
			$.ajax({
				url : "${path}/profile/create",
				type : "POST",
				data : formData,
				contentType: false,
				processData: false,
				success: function(response) {
					alert("성공적으로 프로필을 생성했습니다.");
					modal.hide();
					// 프로필 목록 업데이트 코드 추가
					// 아직 진행 단계에 안 맞음 
				},
				error: function(xhr, status, error) {
					console.error("error", error);
				}
			});
		});
	});
</script>

</body>
</html>

<%@ include file="../common/footer.jsp" %>