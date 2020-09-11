package com.beet.HWABO.vpost.model.dao;

import org.springframework.stereotype.Repository;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.beet.HWABO.vpost.model.vo.VPost;
@Repository("vpostdao")
public class VPostDao {
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

	

	
	
}
