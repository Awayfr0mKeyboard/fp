package com.bitc.FP.member.service;

import com.bitc.FP.member.vo.LoginDTO;
import com.bitc.FP.member.vo.MemberVO;

public interface MemberService {

	boolean memberJoin(MemberVO member);
	
	MemberVO memberLogin(LoginDTO dto);
	
}
