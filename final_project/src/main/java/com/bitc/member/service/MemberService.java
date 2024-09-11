package com.bitc.member.service;

import com.bitc.member.vo.LoginDTO;
import com.bitc.member.vo.MemberVO;

public interface MemberService {

	boolean memberJoin(MemberVO member);

	MemberVO memberLogin(LoginDTO dto);

}
