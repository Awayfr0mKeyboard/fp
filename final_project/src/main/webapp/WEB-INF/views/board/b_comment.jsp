<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" /> 

<style>
<!-- 게시판과 댓글을 나누는 선 -->
.line {
	width : 97%;
	margin-left : 3px;
}

<!-- 댓글 내용 작성칸 -->
.commentInsert-textarea {
	margin-top : 10px;
	width : 174px;
}
	
<!-- 작성된 댓글 목록 -->
#comments li{
	list-style:none;
	padding:10px;
	border:1px solid #ccc;
	margin: 20px 0;
	height:150px;
}
	
</style>

<div id="modDiv">
	<!-- 댓글 수정창 -->
	<h2>댓글 수정</h2>
	<!-- 수정할 댓글 번호 -->
	<div id="modCno"></div>
	<div>
		<input type="text" id="modAuth" placeholder="작성자" />
	</div>
	<div>
		<textarea id="modText" placeholder="댓글내용"></textarea>
	</div>
	<div>
		<button id="modBtn">MODIFY</button>
		<button id="delBtn">DELETE</button>
		<button id="closeBtn">CLOSE</button>
	</div>
</div>

<hr class="line" />
<h2>댓글</h2>
<div class="commentInsert-div-1">
	<div class="commentInsert-div-2">
		작성자 : <input type="text" class="commentInsert-input"
		id="email" name="email"/>
	</div>
	<div class="commentInsert-div-2">
		내 &nbsp;&nbsp; 용 : <textarea class="commentInsert-textarea"
		id="c_content" name="c_content" ></textarea>
	</div>
	<br/>
	<button id="addBtn">ADD Comment</button>
</div>

<!-- 댓글 리스트 출력 -->
<div>
	<ul id="comments"></ul>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/>

<!-- jQuery library 등록 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
	
	var b_num = '${board.b_num}'; // 댓글을 등록할 게시글 번호
	
	getCommentList();

	// 전체 댓글 목록 검색 후 출력
	function getCommentList(){
		// GET - 검색(read)
		let url = "${path}/comments/all/"+b_num;
		// 댓글 목록
		$.getJSON(url, function(data){
			console.log(data);
			printList(data);
		});
	}
	
	
	// 댓글 목록 comments ul 에 출력하는 함수
	function printList(list){
		// list = [CommentVO, CommentVO ... ]
		let str = "";
		
		$(list).each(function(){
			console.log(this);
			let cno = this.bc_num;
			let cAuth = this.email;
			let cText = this.c_content;
			console.log(cno+"-"+cAuth+"-"+cText);
			str += "<li>";
			str += cno + "-" + cAuth +"<br/><hr/>"+cText;
			str += "<br/><hr/>";
			str += getTime(this.regdate);
			str += "<br/><hr/>";
			str += "<button onclick='modDiv(this, "+cno+", \""+cAuth+"\", \""+cText+"\");'>MODIFY</button>";
			str += "</li>";
		});
		
		$("#comments").html(str);
	}
	
	
	// 댓글 수정창 open
	function modDiv(el, cno, auth, text){
		console.log(el);
		$("#modDiv").css("display","none");
		
		// $("#modDiv").fadeToggle('slow'); // fadeIn와 fadeOut 를 번갈아 가면서 해줌
		
		$("#modCno").html(cno);
		$("#modText").val(text);
		$("#modAuth").val(auth);
		
		
		
		// 이벤트가 발생한 button 태그요소의 부모 li요소 뒤에 수정 창 추가(이동)
		$(el).parent().after($("#modDiv"));
		$("#modDiv").slideDown("slow..");
	}
	
	$("#closeBtn").click(function(){
		$("#modDiv").fadeOut('slow');
	});
	
	
	function getTime(time){
		
		let date = new Date(time);
		
		let year = date.getFullYear();
		let month = date.getMonth() + 1;
		let day = date.getDate();
		let hour = date.getHours();
		let minute = date.getMinutes();
		let seconds = date.getSeconds();
		let millis = date.getMilliseconds();
		
		return date.toLocaleString("ko");
	}
	
	
	$("#addBtn").click(function(){
		// 클릭하면 정보를 서버에 전달 
		let cAuth = $("#email").val();
		let cText = $("#c_content").val();
		
		// jQuery ajax
		$.ajax({
			type : "POST",
			url : "${path}/comments",
			data : {
				b_num : b_num,
				email : cAuth,
				c_content : cText
			},
			dataType : "text",
			success : function(result){
				// 응답이 성공하면 실행될 함수, 200
				// 매개변수를 지정해주면 전달된 데이터도 사용 가능해진다
				alert(result);
				
			},
			error : function(res){
				// 에러났을때 실행될 함수
				console.log(res);
			}
		});
	});
	
	
	/*
	수정 요청 처리
	*/
	$("#modBtn").click(function(){
		// 수정할 댓글 번호, 수정된 작성자 , 수정된 댓글 내용
		let cno = $("#modCno").text(); // innerText
		let auth = $("#modAuth").val();
		let text = $("#modText").val();
	
		$.ajax({
			type : "PUT",
			url : "${path}/comments/"+cno,
			headers : {
				"Content-Type" : "application/json"
			},
			// queryString : ?commentText=text&commentAuth=auth
			// JSON.stringify : json 형식의 문자열로 변환
			data : JSON.stringify({
				commentText : text,
				commentAuth : auth
			}),
			dataType : "text",
			success : function(result){
				alert(result);
				$("#modDiv").slideUp("slow");
				getCommentList();
			}
		});
	});
	
</script>