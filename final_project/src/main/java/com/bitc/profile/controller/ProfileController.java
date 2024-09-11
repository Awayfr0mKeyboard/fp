package com.bitc.profile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("profile/")
public class ProfileController {

	@GetMapping("profile")
	public void profile() {
	}

	@GetMapping("profileEdit")
	public void profileEdit() {
	}
}