package com.bitc.profile.service;

import com.bitc.profile.vo.ProfileVO;

public interface ProfileService {

	void defaultProfile(String email);

	ProfileVO getProfileByEmail(String email);
}
