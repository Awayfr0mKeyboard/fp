package com.bitc.FP.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/")
public class MemberController {

	@GetMapping("login")
	public void login() {
	}
	
	@GetMapping("join")
	public void join() {
	}
	
	@GetMapping("find")
	public void find() {
		
	}
	
	@GetMapping("profileEdit")
	public void porfileEdit() {
		
	}
	
	@GetMapping("withdraw")
	public void withdraw() {
		
	}
}
