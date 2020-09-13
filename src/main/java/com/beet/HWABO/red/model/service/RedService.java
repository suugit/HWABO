package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;


public interface RedService {
	int insertProjectStar(Star star);
	int insertProject(Project project);
	int updateProject(Project project);
	int deleteProject(String project_num);
	ArrayList<Project> selectList();
	ArrayList<UserProject> selectStar(String ucode);
	ArrayList<Project> selectCheckStar(Star star);
	Project selectProject(String project_num) ;
	int delStar(UserProject up);
}
