package com.beet.HWABO.dopost.model.service;


import java.util.ArrayList;

import com.beet.HWABO.dopost.model.vo.Dopost;

public interface DopostService {
	
	int insertdopost(Dopost dopost);
	 int deletedopost(Dopost dopost);
	 int updatedopost( Dopost dopost);
	 ArrayList<Dopost> selectList();
	Dopost selectonedopost(String dno);
	
}
