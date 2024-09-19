package com.bitc.member.service;

import org.springframework.stereotype.Service;

import com.bitc.member.dao.MemberDAO;
import com.bitc.member.vo.LoginDTO;
import com.bitc.member.vo.MemberVO;
import com.bitc.profile.service.ProfileService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {

	private final MemberDAO dao;
	private final ProfileService ps;

	@Override
	public boolean memberJoin(MemberVO member) {
		return dao.memberJoin(member);
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
