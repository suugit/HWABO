package com.beet.HWABO.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.invite.model.vo.Invite;
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


	public int selectEmailCheck(String uemail) {
		return session.selectOne("memberMapper.selectEmailCheck", uemail);
	}


	public Member selectMember(String ucode) {
		return session.selectOne("memberMapper.selectMember", ucode);
	}


	public int updateInfo(Member member) {
		return session.update("memberMapper.updateInfo", member);
	}


	public int deleteUser(String ucode) {
		return session.delete("memberMapper.deleteUser", ucode);
	}


	public int updateImg(Member member) {
		return session.update("memberMapper.updateImg", member);
	}


	public int updatePwd(Member member) {
		return session.update("memberMapper.updatePwd", member);
	}


	public int insertInvtNew(Invite invt) {
		return session.insert("memberMapper.insertInvtNew", invt);
	}


	public ArrayList<Member> selectNotMember(String pnum) {
		System.out.println(pnum);
		List<Member> nmlist = session.selectList("memberMapper.selectNotMember", pnum);
		return (ArrayList<Member>)nmlist;
	}
	
	


	

}
