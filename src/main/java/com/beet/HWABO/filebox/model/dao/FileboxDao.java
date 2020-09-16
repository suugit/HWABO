package com.beet.HWABO.filebox.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.filebox.model.vo.Filebox;


@Repository("fileboxDao")
public class FileboxDao {
	
	private static final Logger logger = LoggerFactory.getLogger(FileboxDao.class);

	@Autowired
	private SqlSessionTemplate session;
	
	public FileboxDao() {}
	
	public int insertFilebox(Filebox filebox) {
		logger.info("filebox Dao :" + filebox);
		return session.insert("fileboxMapper.insertFilebox", filebox);
	}

	public ArrayList<Filebox> selectList() {
		logger.info("filebox Dao 옴");
		List<Filebox>list = session.selectList("fileboxMapper.selectList");
		return (ArrayList<Filebox>)list;
	}

}
