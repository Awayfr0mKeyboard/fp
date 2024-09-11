package com.bitc.member.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bitc.member.service.MemberService;
import com.bitc.member.vo.LoginDTO;
import com.bitc.member.vo.MemberVO;
import com.bitc.profile.service.ProfileService;
import com.bitc.profile.vo.ProfileVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("member/")
@RequiredArgsConstructor
public class MemberController {

	private final MemberService ms;
	private final ProfileService ps;

	@GetMapping("join")
	public void join() {
	}

	@PostMapping("join")
	public String join(MemberVO member) {
		boolean isJoin = ms.memberJoin(member);
		if (isJoin) {
			return "redirect:/member/login";
		}
		return "member/join";
	}

	@GetMapping("login")
	public void login() {
	}

	@PostMapping("login")
	public String login(LoginDTO dto, HttpSession session, RedirectAttributes rttr) throws IOException {
		MemberVO member = ms.memberLogin(dto);

		if (member != null) {
			session.setAttribute("member", member);

			// 프로필 정보 조회
			ProfileVO profile = ps.getProfileByEmail(member.getEmail());
			session.setAttribute("profile", profile);

			return "redirect:/profile/profile";
		} else {
			String msg = "이메일 혹은 비밀번호가 일치하지 않습니다.";
			rttr.addFlashAttribute("msg", msg);

			return "redirect:/member/login";
		}
	}

	@GetMapping("find")
	public void find() {
	}

	@GetMapping("membership")
	public void membership() {
	}

	@GetMapping("changePW")
	public void changePW() {
	}

	@GetMapping("resetPW")
	public void resetPW() {
	}

	@GetMapping("beforeMyPage")
	public void beforeMyPage() {
	}

	@GetMapping("myPage")
	public void myPage() {
	}

	@GetMapping("beforeWithdraw")
	public void beforeWithdraw() {
	}

	@GetMapping("withdraw")
	public void withdraw() {
	}
}