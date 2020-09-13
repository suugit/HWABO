package com.beet.HWABO.vpost.model.service;


import java.util.ArrayList;

import com.beet.HWABO.vpost.model.vo.VPost;


public interface VPostService {

	int insertvpost(VPost vpost);

	int updatevpost(VPost vpost);

	ArrayList<VPost> selectList();
	
	

}
