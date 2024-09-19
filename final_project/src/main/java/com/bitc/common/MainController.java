package com.bitc.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
public class MainController {


	@GetMapping("home")
	public String main() {
		return "home";
	}
	
}

