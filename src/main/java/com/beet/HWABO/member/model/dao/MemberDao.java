package com.beet.HWABO.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.member.model.vo.Member;

@Repository("memberDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public MemberDao(){}
	

	public int insertUser(Member member) {
		return session.insert("memberMapper.insertUser", member);
	}

	public Member selectLogin(Member member) {
		return session.selectOne("memberMapper.selectLogin", member);
	}


	public int updateAuth(Member member) {
		return session.update("memberMapper.updateAuth", member);
	}

	public int updateUst(Member member) {
		return session.update("memberMapper.updateUst", member);
	}


}
