package com.beet.HWABO.spost.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.spost.model.dao.SpostDao;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

@Service("spostService")
public class SpostServiceImpl implements SpostService{
	
	@Autowired
	private SpostDao spostDao;
	
	public SpostServiceImpl() {}


//-------- Spost -------------------------------------------------------------------------------------------------
	@Override
	public int insertSpost(Spost spost) {
		return spostDao.insertSpost(spost);
	}

	@Override
	public int deleteSpost(String sno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSpost(Spost spost) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSpostLove(String sno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSpostUnlove(String sno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String selectSpostAlarm(String sno) {
		// TODO Auto-generated method stub
		return null;
	}

	
//-------- Post -------------------------------------------------------------------------------------------------	
	
	@Override
	public ArrayList<Post> selectMyPost() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public ArrayList<Post> selectPost(String postno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Post selectOneView(String postno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertPostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatePostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}

	
//-------- Member -------------------------------------------------------------------------------------------------
	@Override
	public ArrayList<Member> selectMyTeam(String num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member selectMyInfo(String ucode) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
}
