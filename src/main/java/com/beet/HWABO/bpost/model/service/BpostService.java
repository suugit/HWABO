package com.beet.HWABO.bpost.model.service;



import java.util.ArrayList;

import com.beet.HWABO.bpost.model.vo.Bpost;

public interface BpostService {
	
	int insertBpost(Bpost bpost);
	ArrayList<Bpost> selectList();
}
