package com.bitc.member.vo;

import lombok.Data;

@Data
public class LoginDTO {

	private String email;
	private String pass;
	private boolean check;
}
