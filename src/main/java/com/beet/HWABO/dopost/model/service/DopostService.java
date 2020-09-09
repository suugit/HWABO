package com.beet.HWABO.dopost.model.service;

import com.beet.HWABO.dopost.model.vo.Dopost;

public interface DopostService {
	int insertOrigindopost(Dopost dopost);
	 int deletedopost(Dopost dopost);
	 int updateOrigin( Dopost dopost);
	 int updateAddReadCount(int dopost_num);
	 Dopost selectdopost(int dopost_num);
}
