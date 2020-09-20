package com.beet.HWABO.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.invite.model.vo.Invite;
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

	@Override
	public int selectEmailCheck(String uemail) {
		return memberDao.selectEmailCheck(uemail);
	}

	@Override
	public Member selectMember(String ucode) {
		return memberDao.selectMember(ucode);
	}

	@Override
	public int updateInfo(Member member) {
		return memberDao.updateInfo(member);
	}

	@Override
	public int deleteUser(String ucode) {
		return memberDao.deleteUser(ucode);
	}

	@Override
	public int updateImg(Member member) {
		return memberDao.updateImg(member);
	}

	@Override
	public int updatePwd(Member member) {
		return memberDao.updatePwd(member);
	}

	@Override
	public int insertInvtNew(Invite invt) {
		return memberDao.insertInvtNew(invt);
	}

	@Override
	public ArrayList<Member> selectNotMember(String pnum) {
		return memberDao.selectNotMember(pnum);
	}

	@Override
	public int updateTmpPwd(Member member) {
		return memberDao.updateTmpPwd(member);
	}

	@Override
	public int insertSnsUser(Member member) {
		return memberDao.insertSnsUser(member);
	}

	
}
