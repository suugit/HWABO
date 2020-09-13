package com.beet.HWABO.cabinet.model.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.cabinet.model.dao.CabinetDao;
import com.beet.HWABO.cabinet.model.vo.Cabinet;

@Service("cabinetService")
public class CabinetServiceImpl implements CabinetService{

	private static final Logger logger = LoggerFactory.getLogger(CabinetServiceImpl.class);
	
	
	@Autowired
	private CabinetDao cabinetDao;
	
	@Override
	public int insertCabinet(Cabinet cabinet) {
		logger.info("cabinetService 옴 :"+ cabinet);
		
		
		return cabinetDao.insertCabinet(cabinet);
	}

	
}
