package com.beet.HWABO.red.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.red.model.vo.Project;

@Repository("redDao")
public class RedDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public int insertProject(Project project) {
		return session.insert("redMapper.insertProject", project);
	}

	public int updateProject(Project project) {
		return 0;
	}

	public int deleteProject(String project_num) {
		return 0;
	}

	public ArrayList<Project> selectList() {
		List<Project> list = session.selectList("redMapper.selectList");
		return (ArrayList<Project>)list;
	}

	public Project selectProject(String project_num) {
		return null;
	}

}
