package com.beet.HWABO.dopost.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.dopost.model.vo.Dopost;

@Repository("dopostDao")
public class DopostDao {

	@Autowired
	private SqlSessionTemplate session;

	public DopostDao() {
		super();
		
	}
	
	public int insertOrigindopost(Dopost dopost) {
		return session.insert("dopostMapper.insertOrigindopost", dopost);
	}
	
	public int deletedopost(Dopost dopost) {
		return session.delete("dopostMapper.deletedopost", dopost);
	}
	
	public int updateOrigindopost(Dopost dopost) {
		return session.update("dopostMapper.updateOrigindopost", dopost);
	}
	
	public int updateAddReadCountdopost(int dno) {
		return session.update("dopostMapper.updateAddReadCountdopost", dno);
	}
	
	public Dopost selectdopost(int dno) {
		return session.insert("dopostMapper.selectdopost");
	}
	
	
	
	

	
}

