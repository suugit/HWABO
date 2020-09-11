package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import com.beet.HWABO.red.model.vo.Project;


public interface RedService {
	 int insertProject(Project project);
	 int updateProject(Project project);
	 int deleteProject(String project_num);
	 ArrayList<Project> selectList();
	 Project selectProject(String project_num) ;
}
