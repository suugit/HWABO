package com.beet.HWABO.spost.model.service;

import java.util.ArrayList;

import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

public interface SpostService {
	//Spost
	
	int insertSpost(Spost spost);
	int deleteSpost(String sno);
	int updateSpost(Spost spost);
	
	int insertSpostLove(String sno);
	int deleteSpostLove(String sno);
	Spost selectOneSpost(String sno);
	
	//post
	ArrayList<Bpost> selectMyBPOST(PjMember pmember);
	
	ArrayList<Post> selectPostTest();
	
	
	ArrayList<Post> selectMyPost();
	ArrayList<Post> selectPost(String postno);
	
	
	int insertPostReply(String postno);
	int updatePostReply(String postno);
	int deletePostReply(String postno);
	
	//member
	ArrayList<Member> selectMyTeam(String num);
}
