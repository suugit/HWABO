package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.red.model.dao.RedDao;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;


@Service("redService")
public class RedServiceImpl implements RedService {
	@Autowired
	   private RedDao redDao;

	@Override
	public int insertProject(Project project) {
		return redDao.insertProject(project);
	}

	@Override
	public int updateProject(Project project) {
		return redDao.updateProject(project);
	}

	@Override
	public int deleteProject(String project_num) {
		return redDao.deleteProject(project_num);
	}

	@Override
	public ArrayList<Project> selectList() {
		return redDao.selectList();
	}

	@Override
	public Project selectProject(String project_num) {
		return redDao.selectProject(project_num);
	}

	@Override
	public int insertProjectStar(Star star) {
		return redDao.insertProjectStar(star);
	}

	@Override
	public ArrayList<Project> selectStar(String ucode) {
		return redDao.selectStar(ucode);
	}

	@Override
	public ArrayList<Project> selectCheckStar(Star star) {
		return redDao.selectCheckStar(star);
	}
	
	
}
