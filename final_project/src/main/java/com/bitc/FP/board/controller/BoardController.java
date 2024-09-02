package com.bitc.FP.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitc.FP.board.service.BoardService;
import com.bitc.FP.board.vo.BoardVO;
import com.bitc.FP.common.util.Criteria;
import com.bitc.FP.common.util.PageMaker;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("board/")
@RequiredArgsConstructor
public class BoardController {
	
	private final BoardService bs;

	// 게시판 목록
	@GetMapping("board_list")
	public void board_list(
			Criteria cri, Model model,
			HttpSession session
			) throws Exception{
		List<BoardVO> list = bs.listCriteria(cri);
		PageMaker pm = bs.getPageMaker(cri);
		model.addAttribute("list", list);
		model.addAttribute("pm", pm);
		String msg = (String)session.getAttribute("msg");
		if(msg != null) {
			model.addAttribute("msg", msg);
			session.removeAttribute("msg");
		}
	} // end board_list method
	
	// 게시판 상세보기
	@GetMapping("board_detail")
	public void board_detail(int b_num, Model model) throws Exception{
		BoardVO vo = bs.read(b_num);
		model.addAttribute("board", vo);
	} // end board_detail method
	
	// 게시글 작성 페이지
	@GetMapping("board_write")
	public void board_write() throws Exception {
		
	}
	
	
	
} // end BoardController class
