package com.bitc.FP;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MainController {


	@GetMapping("home")
	public String main() {
		return "home";
	}
	
}

