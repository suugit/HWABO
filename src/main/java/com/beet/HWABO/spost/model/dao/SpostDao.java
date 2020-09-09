package com.beet.HWABO.spost.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

@Repository("spostDao")
public class SpostDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public SpostDao() {}
	
	//-------- Spost -------------------------------------------------------------------------------------------------
		
		public int insertSpost(Spost spost) {
			return session.insert("spostMapper.insertSpost", spost);
		}

		
		public int deleteSpost(String sno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
		public int updateSpost(Spost spost) {
			// TODO Auto-generated method stub
			return 0;
		}

		
		public int updateSpostLove(String sno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
		public int updateSpostUnlove(String sno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
		public String selectSpostAlarm(String sno) {
			// TODO Auto-generated method stub
			return null;
		}

		
	//-------- Post -------------------------------------------------------------------------------------------------	
		
	
		public ArrayList<Post> selectMyPost() {
			// TODO Auto-generated method stub
			return null;
		}
		

		public ArrayList<Post> selectPost(String postno) {
			// TODO Auto-generated method stub
			return null;
		}

	
		public Post selectOneView(String postno) {
			// TODO Auto-generated method stub
			return null;
		}

	
		public int insertPostReply(String postno) {
			// TODO Auto-generated method stub
			return 0;
		}

	
		public int updatePostReply(String postno) {
			// TODO Auto-generated method stub
			return 0;
		}

	
		public int deletePostReply(String postno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
	//-------- Member -------------------------------------------------------------------------------------------------
	
		public ArrayList<Member> selectMyTeam(String num) {
			// TODO Auto-generated method stub
			return null;
		}

	
		public Member selectMyInfo(String ucode) {
			// TODO Auto-generated method stub
			return null;
		}

}
