package com.beet.HWABO.member.model.service;

import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.test.model.vo.CryptoUser;

public interface MemberService {
	int insertUser(Member member);
	Member selectLogin(Member member);
}
