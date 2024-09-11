package com.bitc.profile.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.bitc.profile.vo.ProfileVO;

public interface ProfileDAO {

	@Insert("INSERT INTO profile (email, name, image_num, bookmark, pass) "
			+ " VALUES (#{email}, #{name}, #{imageNum}, #{bookmark}, #{pass})")
	void saveProfile(ProfileVO profile);

	@Select("SELECT * FROM profile WHERE email = #{email}")
	ProfileVO getProfileByEmail(String email);
}
