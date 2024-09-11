package com.bitc.profile.dao;

import org.apache.ibatis.annotations.Insert;

import com.bitc.profile.vo.ProfileVO;

public interface ProfileDAO {

	@Insert("INSERT INTO profile (email, name, image_path, bookmark, pass) VALUES (#{email}, #{name}, #{imagePath}, #{bookmark}, #{pass})")
	void insertProfile(ProfileVO profile);
}
