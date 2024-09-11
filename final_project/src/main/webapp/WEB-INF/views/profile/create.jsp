<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<style>
.modal {
    display: none; /* 숨김 상태로 시작 */
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0,0,0,0.4); /* 반투명 배경 */
}

.modal-content {
    background-color: #fefefe;
    margin: 15% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 600px; /* 넓이 조절 */
    justify-content: center;
    align-items: center;
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover, .close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

.profileName, .profilePass {
	height: 70px;
}

.modalFooter {
	height: 70px;
	display: flex;
	justify-content: center;
	align-items: center;
}

button {
	width: 150px;
    height: 40px;
    font-size: 24px;
    font-weight: 600;
    color: #e5e5e5;
    background: #ffa200;
    border: none;
    outline: none;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, .2);
    cursor: pointer;
}
</style>

<!-- create.jsp -->
<div id="profileModal" class="modal">
    <div class="modal-content">
        <span id="closeModal" class="close">&times;</span>
        <div class="modalHeader">
	        <h2>프로필 생성</h2>        
        </div>
        <form id="createProfileForm" method="post" enctype="multipart/form-data">
        	<div class="modalBody">
	            <div class="profileImage">
		            <label for="file">Profile Image:</label>
		            <input type="file" name="file">	            
	            </div>
	            
        		<div class="profileName">
		            <label for="name">프로필 이름</label>
		            <input type="text" name="name" required>        		
        		</div>
	            
	            <div class="profilePass">
	            	<label for="pass">프로필 비밀번호</label>
		            <input type="password" name="pass">
	            </div>
        	</div>
            <div class="modalFooter">
	            <button type="submit">생성</button>            
            </div>
        </form>
    </div>
</div>