package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.red.model.dao.RedDao;
import com.beet.HWABO.red.model.vo.MemberProject;
import com.beet.HWABO.red.model.vo.Progress;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;


@Service("redService")
public class RedServiceImpl implements RedService {
	@Autowired
	   private RedDao redDao;

	@Override
	public int insertProject(UserProject project) {
		return redDao.insertProject(project);
	}

	@Override
	public int updateProject(UserProject project) {
		return redDao.updateProject(project);
	}

	@Override
	public int deleteProject(String project_num) {
		return redDao.deleteProject(project_num);
	}

	@Override
	public ArrayList<UserProject> selectList(String ucode) {
		return redDao.selectList(ucode);
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
	public ArrayList<UserProject> selectStar(String ucode) {
		return redDao.selectStar(ucode);
	}

	@Override
	public ArrayList<UserProject> selectCheckStar(Star star) {
		return redDao.selectCheckStar(star);
	}

	@Override
	public int delStar(UserProject up) {
		return redDao.delStar(up);
	}

	@Override
	public int insertProject2(UserProject project) {
		return redDao.insertProject2(project);
	}

	@Override
	public ArrayList<MemberProject> selectMemberList(String pnum) {
		return redDao.selectMemberList(pnum);
	}

	@Override
	public ArrayList<Bpost> selectBpost(String pnum) {
		return redDao.selectBpost(pnum);
	}

	@Override
	public int deleteProgress(String pnum) {
		return redDao.deleteProgress(pnum);
	}

	@Override
	public int insertProgress(Progress p) {
		return redDao.insertProgress(p);
	}

	@Override
	public int updateProjectProgress(MemberProject mp) {
		return redDao.updateProjectProgress(mp);
	}

	@Override
	public ArrayList<Progress> selectProgressList(String pnum) {
		return redDao.selectProgressList(pnum);
	}
	
}
