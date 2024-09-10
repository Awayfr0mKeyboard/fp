package com.bitc.FP.profile.service;

import com.bitc.FP.profile.vo.ProfileVO;

public interface ProfileService {

	void defaultProfile(String email);
	
	ProfileVO getProfileByEmail(String email);
}
