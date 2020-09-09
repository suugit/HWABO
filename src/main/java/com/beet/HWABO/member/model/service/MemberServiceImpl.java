package com.beet.HWABO.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.member.model.dao.MemberDao;
import com.beet.HWABO.member.model.vo.Member;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public int insertUser(Member member) {
		return memberDao.insertUser(member);
	}

	@Override
	public Member selectLogin(Member member) {
		return memberDao.selectLogin(member);
	}
	
	@Override
	public int updateAuth(Member member) {
		return memberDao.updateAuth(member);
	}

	@Override
	public int updateUst(Member member) {
		return memberDao.updateUst(member);
	}
	

	
	
}
