package com.beet.HWABO.member.model.service;

import java.util.Map;

import com.beet.HWABO.member.model.vo.Member;

public interface MemberService {
	int insertUser(Member member);
	Member selectLogin(Member member);
	int updateAuth(Member member);
	int updateUst(Member member);
	int selectEmailCheck(String uemail);
}
