package com.beet.HWABO.dopost.model.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.dopost.model.dao.DopostDao;
import com.beet.HWABO.dopost.model.vo.Dopost;
import com.beet.HWABO.khc.controller.KhcController;

@Service("dopostService")
public class DopostServiceImpl implements DopostService {
	private static final Logger logger = LoggerFactory.getLogger(DopostServiceImpl.class);
	@Autowired
	private DopostDao dopostDao;

	@Override
	public int insertdopost(Dopost dopost) {
		logger.info("DopostServiceImpl.run ........................");
		return dopostDao.insertdopost(dopost);
	}

	@Override
	public int deletedopost(Dopost dopost) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatedopost(Dopost dopost) {
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
