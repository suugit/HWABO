package com.beet.HWABO.cabinet.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.cabinet.model.vo.Cabinet;

@Repository("cabinetDao")
public class CabinetDao {

	private static final Logger logger = LoggerFactory.getLogger(CabinetDao.class);
	
	@Autowired
	private SqlSessionTemplate session;
	
	public CabinetDao() {}
	
	public int insertCabinet(Cabinet cabinet) {
		logger.info("cabinet dao :"+ cabinet);
		return session.insert("cabinetMapper.insertCabinet", cabinet);
	}

	public int deleteCabinet(Cabinet cabinet) {
		logger.info("cabinet dao :"+ cabinet);
		return session.delete("cabinetMapper.deleteCabinet", cabinet);
	}

}
