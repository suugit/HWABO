package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.red.model.vo.MemberProject;
import com.beet.HWABO.red.model.vo.Progress;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;


public interface RedService {
	int insertProjectStar(Star star);
	int insertProject(UserProject project);
	int updateProject(UserProject project);
	int deleteProject(String project_num);
	ArrayList<UserProject> selectList(String ucode);
	ArrayList<UserProject> selectStar(String ucode);
	ArrayList<UserProject> selectCheckStar(Star star);
	Project selectProject(String project_num) ;
	int delStar(UserProject up);
	int insertProject2(UserProject project);
	ArrayList<MemberProject> selectMemberList(String pnum);
	ArrayList<Bpost> selectBpost(String pnum);
	int deleteProgress(String pnum);
	int insertProgress(Progress p);
	int updateProjectProgress(MemberProject mp);
	ArrayList<Progress> selectProgressList(String pnum);
}
