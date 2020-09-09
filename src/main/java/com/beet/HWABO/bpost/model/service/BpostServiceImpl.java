package com.beet.HWABO.bpost.model.service;


import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.beet.HWABO.bpost.model.dao.BpostDao;
import com.beet.HWABO.bpost.model.vo.Bpost;

@Service("bpostService")
public class BpostServiceImpl implements BpostService{

	private BpostDao bpostDao;
	
	@Override
	public int insertBpost(Bpost bpost) {
	
		return bpostDao.insertBpost(bpost);
	}

}
