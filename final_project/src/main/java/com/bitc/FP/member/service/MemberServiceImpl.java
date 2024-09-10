package com.bitc.FP.member.service;

import org.springframework.stereotype.Service;

import com.bitc.FP.member.dao.MemberDAO;
import com.bitc.FP.member.vo.LoginDTO;
import com.bitc.FP.member.vo.MemberVO;
import com.bitc.FP.profile.service.ProfileService;

import lombok.RequiredArgsConstructor;

@Service("ms")
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberDAO dao;
	private final ProfileService ps;
	
	@Override
	public boolean memberJoin(MemberVO member) {
		boolean isJoin = dao.memberJoin(member);
		
		// DB에 MemberVO 객체가 성공적으로 들어가면, 기본 프로필 생성 호출
		if (isJoin) {
			ps.defaultProfile(member.getEmail());
		}
		return isJoin;
	}

	@Override
	public MemberVO memberLogin(LoginDTO dto) {
		
		MemberVO member = dao.memberLogin(dto.getEmail());
		
		if (member != null && member.getPass().equals(dto.getPass())) {
			return member;
		}
		
		return null;
	}

}
