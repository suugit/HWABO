package com.beet.HWABO.dopost.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.dopost.model.vo.Dopost;

@Service("dopostService")
public class DopostServiceImpl implements DopostService {
	
	@Autowired
	private DopostDao dopostDao;

	@Override
	public int insertOrigindopost(Dopost dopost) {
		return dopostDao.insertOrigindopost(dopost);
	}

	@Override
	public int deletedopost(Dopost dopost) {
		return dopostDao.deletedopost(dopost);
	}

	@Override
	public int updateOrigindopost(Dopost dopost) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAddReadCountdopost(int dopost_num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Dopost selectdopost(int dopost_num) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
	
}
