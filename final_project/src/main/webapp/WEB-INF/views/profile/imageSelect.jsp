<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<style>
.Imagemodal {
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

.imageModalContent {
	background-color: gray;
    margin: 25% auto;
    padding: 20px;
    border: 1px solid #888;
    width: 800px; /* 넓이 조절 */
    justify-content: center;
    align-items: center;
}

.modalBody {
	height: 200px;
}

.selectableImage {
	width: 100px;
	hieght: 100px;
}

</style>


<!-- imageSelect.jsp -->
<div id="imageSelectModal" class="Imagemodal">
    <div class="imageModalContent">
        <div class="modalHeader">
	        <h2>프로필 이미지 선택</h2>        
        </div>
        <form id="imageSelectForm" method="post" enctype="multipart/form-data">
        	<div class="modalBody">
	         	<c:forEach var="image" items="${imageList}">
    				<img src="${image}" class="selectableImage" data-url="${image}" alt="Profile Image">
				</c:forEach>
	         </div>
        </form>
    </div>
</div>


<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	
	$(document).on("click", ".selectableImage", function() {
		var imageUrl = $(this).data("url");
		
		// 선택한 이미지를 create.jsp로 전달
		$("#selectedImage", window.parent.docuement).attr("src", imageUrl).show();
		
		// 선택 창 닫기
		$("#imageSelectModal").hide();
	})
	
</script>