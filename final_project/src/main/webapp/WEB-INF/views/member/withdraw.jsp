<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
.modal {
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.modal_overlay {
	background-color: rgba(0, 0, 0, 0.6);
	width: 100%;
	height: 100%;
}

.modal_content {
	position: fixed;
	top: 0;
}
</style>

<body>
	<div class="modal">
		<div class="modal_overlay"></div> <!-- 모달창의 배경색 -->
		<div class="modal_content">
			<h1>회원 탈퇴</h1>
			<button>X</button>
		</div>
	</div>
</body>