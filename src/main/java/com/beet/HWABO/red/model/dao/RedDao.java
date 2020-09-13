package com.beet.HWABO.red.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;

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
		return session.delete("redMapper.deleteProject", project_num);
	}

	public ArrayList<Project> selectList() {
		List<Project> list = session.selectList("redMapper.selectList");
		return (ArrayList<Project>)list;
	}

	public Project selectProject(String project_num) {
		return session.selectOne("redMapper.selectProject", project_num);
	}

	public int insertProjectStar(Star star) {
		return session.insert("redMapper.insertProjectStar", star);
	}

	public ArrayList<UserProject> selectStar(String ucode) {
		List<UserProject> list = session.selectList("redMapper.selectStar", ucode);
		return (ArrayList<UserProject>)list;
	}
	
	public ArrayList<Project> selectCheckStar(Star star) {
		List<Project> list = session.selectList("redMapper.selectCheckStar", star);
		return (ArrayList<Project>)list;
	}

	public int delStar(UserProject up) {
		return session.delete("redMapper.delStar", up);
	}

}
