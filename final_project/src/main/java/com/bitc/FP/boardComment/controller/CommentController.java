package com.bitc.FP.boardComment.controller;

import java.nio.charset.Charset;
import java.util.List;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitc.FP.boardComment.service.CommentService;
import com.bitc.FP.boardComment.vo.CommentVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/comments")
@RequiredArgsConstructor
public class CommentController {

	private final CommentService cs;
	
	@PostMapping("")
	// @ResponseBody : 반환되는 값을 데이터 그 자체로 받아들인다. view 페이지 찾지 않음.
	@ResponseBody
	// ResponseEntity : 응답에 필요한 부가적인 정보를 저장하는 기능
	public ResponseEntity<String> addComment(
			CommentVO comment
			) {
		// 지금부터 전달되는 타입
		HttpHeaders headers = new HttpHeaders();
		MediaType type = new MediaType("application", "json", Charset.forName("utf-8"));
		headers.setContentType(type);
		ResponseEntity<String> entity = null;
		try {
			String message = cs.addComment(comment); 
										// 매개변수 3개 : 요청처리 후 결과 데이터, 헤더, 상태코드
			entity = new ResponseEntity<>("삽입성공", headers, HttpStatus.OK); // 200
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(), headers, 
					// HttpStatus.INTERNAL_SERVER_ERROR
					HttpStatus.BAD_REQUEST
					);
			e.printStackTrace();
		}

		return entity;
	}
	
	
	@GetMapping("/all/{b_num}")
	public ResponseEntity<List<CommentVO>> list(
				@PathVariable(name = "b_num") int b_num
			){
		ResponseEntity<List<CommentVO>> entity = null;
		
		try {
			List<CommentVO> list = cs.commentList(b_num);
			entity = new ResponseEntity<>(list, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	/**
	 * 수정 요청 처리
	 * "${path}/comments/"+cno
	 */
	@PutMapping("/{cno}")
	public ResponseEntity<String> update(
			@PathVariable int cno, 
			@RequestBody CommentVO vo
			){
		ResponseEntity<String> entity = null;
		vo.setBc_num(cno);
		
		try {
			String result = cs.updateComment(vo);  // 댓글 수정 요청
			entity = new ResponseEntity<>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
} // end CommentController class
