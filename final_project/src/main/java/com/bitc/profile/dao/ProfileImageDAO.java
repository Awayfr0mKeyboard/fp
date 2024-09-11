package com.bitc.profile.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bitc.profile.vo.ProfileImageVO;

public interface ProfileImageDAO {

	@Insert("INSERT INTO profile_image (image_name, image_type, image_data) "
			+ " VALUES (#{imageName}, #{imageType}, #{imageData})")
	void saveProfileImage(ProfileImageVO image);
	// image_data → image_url로 변경
	
	
	@Select("SELECT * FROM profile_image")
	List<ProfileImageVO> getProfileImage();

	// 고유키 번호로 가져오기
	@Select("SELECT * FROM profile_image WHERE image_num = #{imageNum}")
	ProfileImageVO getProfileImageById(@Param("imageNum") int imageNum);

	// 이미지 이름으로 가져오기
	@Select("SELECT * FROM profile_image WHERE image_name = #{imageName}")
	ProfileImageVO getProfileImageByName(@Param("imageName") String imageName);
}
