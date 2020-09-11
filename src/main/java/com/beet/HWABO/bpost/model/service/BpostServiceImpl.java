package com.beet.HWABO.bpost.model.service;


import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.bpost.model.dao.BpostDao;
import com.beet.HWABO.bpost.model.vo.Bpost;

@Service("bpostService")
public class BpostServiceImpl implements BpostService{

	private static final Logger logger = LoggerFactory.getLogger(BpostServiceImpl.class);
	
	@Autowired
	private BpostDao bpostDao;
	
	@Override
	public int insertBpost(Bpost bpost) {
	
		logger.info("service 옴 : " + bpost);
		
		return bpostDao.insertBpost(bpost);
	}

	@Override
	public ArrayList<Bpost> selectList() {
		
		return bpostDao.selectList();
	}

}
