package com.bitc.profile.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bitc.profile.dao.ProfileDAO;
import com.bitc.profile.vo.ProfileVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProfileServiceImpl implements ProfileService {

	private final ProfileDAO dao;

	@Value("${file.upload-dir}")
	private String uploadDir;

	public String saveProfileImage(MultipartFile file) throws IOException {
		if (file.isEmpty()) {
			return null;
		}
		String filename = file.getOriginalFilename();
		File targetFile = new File(uploadDir, filename);
		file.transferTo(targetFile);

		// 웹에서 접근가능한 경로
		return "/profileimage/" + filename;
	}

	@Override
	public void createProfile(ProfileVO profile) {
		dao.insertProfile(profile);
	}

}
