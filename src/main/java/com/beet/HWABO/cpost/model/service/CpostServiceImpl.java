package com.beet.HWABO.cpost.model.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.cpost.model.dao.CpostDao;
import com.beet.HWABO.cpost.model.vo.Cpost;

@Service("cpostService")
public class CpostServiceImpl implements CpostService{

	private static final Logger logger = LoggerFactory.getLogger(CpostServiceImpl.class);

	@Autowired
	private CpostDao cpostDao;
	
	@Override
	public int insertCpost(Cpost cpost) {
		return cpostDao.insertCpost(cpost);
	}
}
