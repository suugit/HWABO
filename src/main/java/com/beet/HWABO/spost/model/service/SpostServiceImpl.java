package com.beet.HWABO.spost.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.spost.model.dao.SpostDao;

@Service("spostService")
public class SpostServiceImpl implements SpostService{
	
	@Autowired
	private SpostDao spostDao;
	
	public SpostServiceImpl() {}
	
	
	
	
	
}
