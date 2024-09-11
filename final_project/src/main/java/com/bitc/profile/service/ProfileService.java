package com.bitc.profile.service;

import java.io.IOException;
import org.springframework.web.multipart.MultipartFile;
import com.bitc.profile.vo.ProfileVO;

public interface ProfileService {
	
	
	String saveProfileImage(MultipartFile file) throws IOException;
	
	// 프로필 생성 메서드
	void createProfile(ProfileVO profile);
}
