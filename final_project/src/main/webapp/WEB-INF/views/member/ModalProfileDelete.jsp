<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style>
.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.modalOverlay {
	background-color: rgba(0, 0, 0, 0.6);
	width: 100%;
	height: 100%;
	position: absolute;
}

.modalContent {
	background-color: white;
	padding: 50px 100px;
	text-align: center;
	position: relative;
	border-radius: 10px;
	width: 30%;
	box-shodow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px rgba(0, 0, 0, 0.23);
}

h1 {
	margin: 0;
}

.hidden {
	display: none;
}

<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>


</style>

	<div class="modal hidden">
		<div class="modalOverlay"></div> <!-- 모달창의 배경색 -->
		<div class="modalContent">
			<h1>프로필 삭제</h1>
			
			<div>
				<h2></h2>
				<input type="password">
				<i class='bx bxs-lock-alt'></i>
			</div>
			
			<div class="btnBox">
				<input type="button" id="delete" value="삭제" />
				<input type="button" id="cancel" value="취소" />			
			</div>
		</div>
	</div>
<!-- 	
	<script>
		const modal = document.querySelector(".modal");
		const overlay = modal.querySelector(".modalOverlay");
		const closeBtn = modal.querySelector(".cancelBtn");
		const openModal = () => {
			modal.classList.remove("hidden");
		}
		
		const closeModal = () => {
			modal.classList.add("hidden");
		}
		
		overlay.addEventListener("click", closeModal);
		closeBtn.addEventListener("click", closeModal);
		
	</script>
 -->






