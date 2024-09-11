package com.bitc.profile.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.bitc.member.vo.MemberVO;
import com.bitc.profile.service.ProfileService;
import com.bitc.profile.vo.ProfileVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("profile/")
@RequiredArgsConstructor
public class ProfileController {

	private final ProfileService ps;
	
	@GetMapping("profile")
	public void profile() {}
	
	// 프로필 생성에 필요한 정보?
	@PostMapping("profile")
	public String createProfile(ProfileVO profile, MultipartFile file, HttpSession session) throws IOException {
		//파일 업로드 경로 설정 (application.properties에서 설정한 경로)
		String uploadDir = "D:/profileimage/";
		
		// 파일이 비어있지 않으면 저장 처리
		if (!file.isEmpty()) {
			String fileName = file.getOriginalFilename();
			String filePath = uploadDir + fileName;
			// 파일을 서버경로에 저장
			file.transferTo(new File(filePath));
			
			// 프로필 이미지 경로를 VO에 설정
			profile.setImagePath(filePath);
		}
		
		// 로그인한 사용자의 이메일을 가져와서 프로필 객체에 설정
		String email = (String) session.getAttribute("memberEmail");
		profile.setEmail(email);
		
		// 서비스 호출하여 프로필 생성
		ps.createProfile(profile);
		
		
		return "redirect:/profile";
	}
	
	@PostMapping("create")
	public String create(String name, MultipartFile file, HttpSession session) throws IOException {
		String email = ((MemberVO) session.getAttribute("member")).getEmail();
		String imagePath = ps.saveProfileImage(file);
		ProfileVO profile = new ProfileVO();
		profile.setEmail(email);
		profile.setName(name);
		profile.setImagePath(imagePath);
		ps.createProfile(profile);
		
		return "redirect:/profile/profile";
	}

	@GetMapping("profileEdit")
	public void profileEdit() {
	}
}
