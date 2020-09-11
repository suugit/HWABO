package com.beet.HWABO.cpost.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.cpost.model.vo.AddOn;
import com.beet.HWABO.cpost.model.vo.Cpost;

@Repository("cpostDao")
public class CpostDao {
	
	private static final Logger logger = LoggerFactory.getLogger(CpostDao.class);
	
	@Autowired
	private SqlSessionTemplate session;
	
	public int insertCpost(Cpost cpost) {
		return session.insert("cpostMapper.insertCpost", cpost);
	}

	public String selectCno() {
		return session.selectOne("cpostMapper.selectCno");
	}

	public int updateCfile(AddOn addon) {
		return session.insert("cpostMapper.updateCfile", addon);
	}
	

}
