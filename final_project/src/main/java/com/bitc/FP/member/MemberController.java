package com.bitc.FP.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/")
public class MemberController {

	@GetMapping("login")
	public void login() {}
	
	@GetMapping("join")
	public void join() {}
	
	@GetMapping("find")
	public void find() {}
	
	@GetMapping("profileEdit")
	public void porfileEdit() {}
	
	@GetMapping("membership")
	public void membership() {}
	
	@GetMapping("payment")
	public void payment() {}
	
	@GetMapping("paymentModal")
	public void paymentModal() {}
	
	@GetMapping("changePW")
	public void changePW() {}
	
	@GetMapping("resetPW")
	public void resetPW() {}
	
	@GetMapping("beforeMyPage")
	public void beforeMyPage() {}
	
	@GetMapping("myPage")
	public void myPage() {}

	@GetMapping("beforeWithdraw")
	public void beforeWithdraw() {}
	
	@GetMapping("withdraw")
	public void withdraw() {}
}