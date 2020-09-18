package com.beet.HWABO.spost.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.abc.model.vo.Love;
import com.beet.HWABO.abc.model.vo.Postreply;
import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.spost.model.dao.SpostDao;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

@Service("spostService")
public class SpostServiceImpl implements SpostService{
	
	@Autowired
	private SpostDao spostDao;
	
	public SpostServiceImpl() {};


//-------- Spost -------------------------------------------------------------------------------------------------
	
	@Override
	public Spost selectOneSpost(String sno) {
		return spostDao.selectOneSpost(sno);
	}
	
	@Override
	public ArrayList<Spost> selectAllSpost() {
		return spostDao.selectAllSpost();
	}
	
	@Override
	public int insertSpost(Spost spost) {
		return spostDao.insertSpost(spost);
	}

	@Override
	public int deleteSpost(String sno) {
		return spostDao.deleteSpost(sno);
	}

	@Override
	public int updateSpost(Spost spost) {
		return spostDao.updateSpost(spost);
	}



	
//-------- Bpost -------------------------------------------------------------------------------------------------	
	
	@Override
	public ArrayList<Bpost> selectMyBPOST(PjMember pmember) {
		return spostDao.selectMyBPOST(pmember);
	}
	
	@Override
	public Bpost selectOneBpost(String bno) {
		return spostDao.selectOneBpost(bno);
	}
	
	
	
//-------- Post -------------------------------------------------------------------------------------------------	
	
	@Override
	public ArrayList<Post> selectMyPost(PjMember pmember) {
		return spostDao.selectMyPost(pmember);
	}
	

//-------- Love -------------------------------------------------------------------------------------------------	

	@Override
	public int insertSpostLove(Love love) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int deleteSpostLove(Love love) {
		// TODO Auto-generated method stub
		return 0;
	}

		
//-------- Postreply -------------------------------------------------------------------------------------------------	
	
	@Override
	public int insertPostReply(Postreply reply) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int deletePostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int updatePostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}












	
	
	
	
	
}
