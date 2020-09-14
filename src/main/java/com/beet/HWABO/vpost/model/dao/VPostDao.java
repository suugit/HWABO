package com.beet.HWABO.vpost.model.dao;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.beet.HWABO.bpost.model.dao.BpostDao;
import com.beet.HWABO.vpost.model.vo.VPost;
@Repository("vpostdao")
public class VPostDao {
	
	private static final Logger logger = LoggerFactory.getLogger(BpostDao.class);
	
	@Autowired
	private SqlSessionTemplate session;
	
	public VPostDao() {

	}
	
	
	public int insertvpost(VPost vpost) {
		
		return session.insert("vpostMapper.insertvpost", vpost);
	}


	public int updatevpost(VPost vpost) {
		return session.update("vpostMapper.updatevpost", vpost);
	}


	public ArrayList<VPost> selectvpost() {
		logger.info("vpostMapper.selectList바로 가기직전 !");
		List<VPost> list = session.selectList("vpostMapper.selectList");
		return (ArrayList<VPost>)list;
	}
	
	
	}

	

	
	

