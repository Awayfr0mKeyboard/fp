package com.bitc.FP.profile.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitc.FP.profile.dao.ProfileDAO;
import com.bitc.FP.profile.vo.ProfileImageVO;
import com.bitc.FP.profile.vo.ProfileVO;

import lombok.RequiredArgsConstructor;

@Service("ps")
@RequiredArgsConstructor
public class ProfileServiceImpl implements ProfileService {

	private final ProfileDAO dao;
	private final ProfileImageService pis;
	
	@Transactional
	@Override
	public void defaultProfile(String email) {
		
		// 기본 프로필 생성
		ProfileVO defaultProfile = new ProfileVO();
		defaultProfile.setEmail(email);
		defaultProfile.setName("기본 프로필");

		// 랜덤 기본 프로필 이미지 가져오기
		ProfileImageVO defaultProfileImage = pis.randomProfileImage();
		
		if (defaultProfileImage != null) {
			// 프로필 이미지가 있을 경우
			defaultProfile.setImageNum(defaultProfileImage.getImageNum());
		} else {
			// 기본 이미지가 없을 경우
			defaultProfile.setImageNum(1);
		}
		
		// 프로필 생성 DAO 호출
		dao.saveProfile(defaultProfile);
	}

	@Override
	public ProfileVO getProfileByEmail(String email) {
		return dao.getProfileByEmail(email);
	}


}
