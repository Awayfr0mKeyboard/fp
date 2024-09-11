package com.bitc.profile.vo;

import lombok.Data;

@Data
public class ProfileImageVO {

	private int imageNum;
	private String imageName; // 이미지 이름 ("profile1.png")
	private String imageType; // 이미지 타입 MIME 타입 ("image/png")
	private byte[] imageData; // 이미지 데이터 (바이너리)
}