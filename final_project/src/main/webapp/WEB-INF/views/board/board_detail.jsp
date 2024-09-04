<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>

<head>
	<title>${board.b_num} 번째 게시글</title>
	<link rel="stylesheet" href="${path}/resources/css/board_detail_style.css?after">
</head>

<div class="container">
	<div>
		<h1 class="commu_title">${board.b_num} 번째 게시글</h1>
	</div>
	<div class="row m-5">
		<div class="col-md-2">
			<span class="form-control-plaintext">작성자</span>
		</div>
		<div class="col-md-10">
			<span class="form-control-plaintext input-form">${board.email}</span>
		</div>
	</div>
	<div class="row m-5">
		<div class="col-md-2">
			<span class="form-control-plaintext">제목</span>
		</div>
		<div class="col-md-10 form-control-plaintext input-form">${board.b_title}</div>
	</div>
	<div class="row m-5">
		<div class="col-md-2">
			<span class="form-control-plaintext">내용</span>
		</div>
		<div class="col-md-10">
			<textarea class="form-control input-form" rows="10"
				readonly>${board.b_content}</textarea>
		</div>
	</div>
	<div class="row m-5">
		<div class="col-md-4">
			<a href="${path}/board/board_modify?b_num=${board.b_num}"
				class="form-control btn btn-warning">수정</a>
			<a href="#" onclick="deleteNotice('${board.b_num}',event);"
				class="form-control btn btn-danger">삭제</a>	
			<a href="${path}/board/board_list"
				class="form-control btn btn-primary">목록</a>
		</div>
	</div>
</div>
<script>
	function deleteNotice(b_num,event){
		event.preventDefault();
		if(confirm(b_num+" 게시물을 삭제하시겠습니까?")){
			location.href='${path}/board/delete?b_num='+b_num;
		}
	}
</script>

<%@ include file="../common/footer.jsp" %>