package com.beet.HWABO.spost.model.service;

import java.util.ArrayList;

import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

public interface SpostService {
	ArrayList<Spost> selectMyPost();
	ArrayList<Post> selectPost(String postno);
	int insertSpost(Spost spost);
	int deleteSpost(String sno);
	int updateSpost(Spost spost);
	Post selectOneView(String postno);
	
	
}
