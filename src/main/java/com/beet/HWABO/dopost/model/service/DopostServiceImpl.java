package com.beet.HWABO.dopost.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.dopost.model.dao.DopostDao;
import com.beet.HWABO.dopost.model.vo.Dopost;

@Service("dopostService")
public class DopostServiceImpl implements DopostService {
	
	@Autowired
	private DopostDao dopostDao;

	@Override
	public int insertOrigindopost(Dopost dopost) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletedopost(Dopost dopost) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateOrigindopost(Dopost dopost) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAddReadCountdopost(int dno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Dopost selectdopost(int dno) {
		return dopostDao.selectdopost(dno);
	}

	


	

	
	
}
