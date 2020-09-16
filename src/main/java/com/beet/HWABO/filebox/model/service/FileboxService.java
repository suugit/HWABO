package com.beet.HWABO.filebox.model.service;

import java.util.ArrayList;

import com.beet.HWABO.filebox.model.vo.Filebox;

public interface FileboxService {

	int insertFilebox(Filebox filebox);
	ArrayList<Filebox> selectList();
	
}
