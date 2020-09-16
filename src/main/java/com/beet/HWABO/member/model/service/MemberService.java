package com.beet.HWABO.member.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.beet.HWABO.member.model.vo.Member;

public interface MemberService {
	int insertUser(Member member);

	Member selectLogin(Member member);

	Member selectMember(String ucode);

	int updateAuth(Member member);

	int updateUst(Member member);

	int selectEmailCheck(String uemail);

	int updateInfo(Member member);

	int deleteUser(String ucode);

	int updateImg(Member member);

	int updatePwd(Member member);

	ArrayList<Member> selectinvte(String pnum);
	
}
