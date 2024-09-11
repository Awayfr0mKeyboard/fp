package com.bitc.profile.service;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitc.profile.dao.ProfileImageDAO;
import com.bitc.profile.vo.ProfileImageVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProfileImageService {

	private final ProfileImageDAO dao;

	// 이미지들을 DB에 저장하는 메서드
	public void saveProfileImages() throws IOException {
		
		// DB랑 서버로 쪼개서 이미지 저장하는걸로 
		// resources/img/profile 에 저장된 이미지 이름
		String[] imageNames = { "profile1.png", "profile2.png", "profile3.png", "profile4.png", "profileAdd.png" };

		// 각 이미지 파일을 DB에 저장
		for (String imageName : imageNames) {
			// 이미지 저장 경로 설정
			Resource resource = new ClassPathResource("resources/img/profile/" + imageName);

			// 이미지 데이터 읽기
			try (InputStream inputStream = resource.getInputStream()) {
				byte[] imageData = inputStream.readAllBytes();
				String imageType = Files.probeContentType(Paths.get(resource.getURI()));

				// ProfileImage 객체 생성
				ProfileImageVO profileImage = new ProfileImageVO();
				profileImage.setImageName(imageName);
				profileImage.setImageType(imageType);
				profileImage.setImageData(imageData);

				// DB에 저장
				dao.saveProfileImage(profileImage);
			}
		}
	};

	// 무작위 프로필 이미지 하나를 불러오는 메서드
	public ProfileImageVO randomProfileImage() {
		List<ProfileImageVO> images = dao.getProfileImage();

		if (images.isEmpty()) {
			return null;
		}

		// profileAdd.png를 제외한 이미지 목록 필터링
		List<ProfileImageVO> filteredImages = images.stream()
				.filter(image -> !image.getImageName().equals("profileAdd.png")).collect(Collectors.toList());

		// 필터링된 이미지가 비어있으면 null 반환
		if (filteredImages.isEmpty()) {
			return null;
		}

		// 무작위 이미지 선택
		Random random = new Random();
		return filteredImages.get(random.nextInt(filteredImages.size()));
	}
}
