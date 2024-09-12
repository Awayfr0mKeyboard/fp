package com.bitc.profile.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	// 웹에서 접근 가능한 경로
	@Value("${access.url}")
	private String accessUrl;

	// 실제 파일 경로
	@Value("${profile.image.path}")
	private String imagePath;

	@GetMapping("profile")
	public void profile() {
	}

	// 프로필 생성에 필요한 정보
	@PostMapping("profile")
	public String createProfile(ProfileVO profile, MultipartFile file, HttpSession session) throws IOException {

		// 파일이 비어있지 않으면 저장 처리
		if (!file.isEmpty()) {
			String fileName = file.getOriginalFilename();
			// 이미지 경로 resources/img/profile/이미지 파일
			String filePath = "/img/profile/" + fileName;
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

	@GetMapping("imageSelect")
	public String showImage(Model model) {
		List<String> imageList = getProfileImage();
		model.addAttribute("imageList", imageList);

		return "imageSelect";
	}

	// 프로필 이미지 가져오기
	private List<String> getProfileImage() {
		List<String> imageList = new ArrayList<>();

		// 실제 이미지 파일 경로 (D:/profileImage/)
		File imageDir = new File(imagePath);
		
		// 실제 이미지 파일 목록 (D:/profileImage/profile1.png ...)
		File[] files = imageDir.listFiles();

		if (files != null) {
			for (File file : files) {
				// 웹 브라우저에서 접근할 수 있는 경로 URL (FP/resources/img/profile/) + 파일 이름(profile1.png ...)
				imageList.add(accessUrl + file.getName());
			}
		}
		return imageList;
	}

	@GetMapping("profileEdit")
	public void profileEdit() {
	}
}