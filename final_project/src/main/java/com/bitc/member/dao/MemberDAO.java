package com.bitc.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.bitc.member.vo.MemberVO;

public interface MemberDAO {

	@Insert("INSERT INTO member(num, email, pass, age, point, phone, join_date) VALUES(null,#{email},#{pass},#{age},0,#{phone},now())")
	boolean memberJoin(MemberVO member);

	@Select("SELECT * FROM member WHERE email = #{email}")
	MemberVO memberLogin(String email);

}
