package com.bitc.FP.member.vo;

import lombok.Data;

@Data
public class Membership {

	// 멤버십 등급
	private String grade;
	// 월 요금
	private String charge;
	// 해상도
	private String pixel;
	// 프로필 갯수 (2 = 최소, 4 = 최대)
	private int maxProfile;
	// 광고 유무 (0 = 광고 있음, 1 = 광고 없음)
	private int commercial;
}
