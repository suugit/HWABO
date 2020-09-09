package com.beet.HWABO.bpost.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.bpost.model.vo.Bpost;

@Repository("bpostDao")
public class BpostDao {

	@Autowired
	private SqlSessionTemplate session;
	
	public int insertBpost(Bpost bpost) {
		
		return session.insert("bpostMapper.insertBpost", bpost);
	}

}
