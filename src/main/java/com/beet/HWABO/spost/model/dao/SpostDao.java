package com.beet.HWABO.spost.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("spostDao")
public class SpostDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public SpostDao() {}
	

}
