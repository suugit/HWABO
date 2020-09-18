package com.beet.HWABO.filebox.model.service;

import java.util.ArrayList;

import com.beet.HWABO.filebox.model.vo.Filebox;

public interface FileboxService {

	ArrayList<Filebox> selectList(String pnum);

	ArrayList<Filebox> selectTxtList(String pnum);
}
