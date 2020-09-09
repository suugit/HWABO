package com.beet.HWABO.dopost.model.service;

import com.beet.HWABO.dopost.model.vo.Dopost;

public interface DopostService {
	int insertOrigindopost(Dopost dopost);
	 int deletedopost(Dopost dopost);
	 int updateOrigindopost( Dopost dopost);
	 int updateAddReadCountdopost(int dno);
	 Dopost selectdopost(int dno);
}
