package com.beet.HWABO.spost.model.service;

import java.util.ArrayList;

import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

public interface SpostService {
	//Spost
	
	int insertSpost(Spost spost);
	int deleteSpost(String sno);
	int updateSpost(Spost spost);
	
	int updateSpostLove(String sno);
	int updateSpostUnlove(String sno);
	String selectSpostAlarm(String sno);
	Spost selectOneSpost(String sno);
	
	//post
	ArrayList<Post> selectMyPost();
	ArrayList<Post> selectPost(String postno);
	Post selectOneView(String postno);
	int insertPostReply(String postno);
	int updatePostReply(String postno);
	int deletePostReply(String postno);
	
	//member
	ArrayList<Member> selectMyTeam(String num);
	Member selectMyInfo (String ucode);
}
