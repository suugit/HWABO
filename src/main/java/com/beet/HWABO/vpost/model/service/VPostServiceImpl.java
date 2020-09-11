package com.beet.HWABO.vpost.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.vpost.model.dao.VPostDao;
import com.beet.HWABO.vpost.model.vo.VPost;


@Service("VPostService")
public class VPostServiceImpl implements VPostService{

	@Autowired
	private VPostDao vpostdao;

	

	@Override
	public int insertvpost(VPost vpost) {
		return vpostdao.insertvpost(vpost);
	}



	@Override
	public int updatevpost(VPost vpost) {
		return vpostdao.updatevpost(vpost);
	}
}
