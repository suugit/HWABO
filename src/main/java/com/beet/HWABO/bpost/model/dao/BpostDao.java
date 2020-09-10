package com.beet.HWABO.bpost.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.bpost.model.vo.Bpost;

@Repository("bpostDao")
public class BpostDao {

	private static final Logger logger = LoggerFactory.getLogger(BpostDao.class);
	
	@Autowired
	private SqlSessionTemplate session;
	
	public BpostDao() {}
	
	public int insertBpost(Bpost bpost) {
		logger.info("bpost dao : " + bpost);
		return session.insert("bpostMapper.insertBpost", bpost);
	}

}