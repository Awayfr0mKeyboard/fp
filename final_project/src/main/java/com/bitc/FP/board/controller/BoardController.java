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
	
	
} // end BoardController class
