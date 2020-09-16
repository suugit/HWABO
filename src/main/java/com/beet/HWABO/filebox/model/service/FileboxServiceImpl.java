package com.beet.HWABO.filebox.model.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.filebox.model.dao.FileboxDao;
import com.beet.HWABO.filebox.model.vo.Filebox;

@Service("fileboxService")
public class FileboxServiceImpl implements FileboxService {

	private static final Logger logger = LoggerFactory.getLogger(FileboxServiceImpl.class);
	
	
	@Autowired
	private FileboxDao fileboxDao;
	
	@Override
	public int insertFilebox(Filebox filebox) {

		return fileboxDao.insertFilebox(filebox);
	}

	@Override
	public ArrayList<Filebox> selectList() {
	
		return fileboxDao.selectList();
	}

}
