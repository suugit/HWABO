package com.beet.HWABO.red.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.red.model.vo.MemberProject;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;

@Repository("redDao")
public class RedDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public int insertProject(UserProject project) {
		return session.insert("redMapper.insertProject", project);
	}

	public int updateProject(UserProject project) {
		return 0;
	}

	public int deleteProject(String project_num) {
		return session.delete("redMapper.deleteProject", project_num);
	}

	public ArrayList<UserProject> selectList(String ucode) {
		List<UserProject> list = session.selectList("redMapper.selectList", ucode);
		return (ArrayList<UserProject>)list;
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
	
	public ArrayList<UserProject> selectCheckStar(Star star) {
		List<UserProject> list = session.selectList("redMapper.selectCheckStar", star);
		return (ArrayList<UserProject>)list;
	}

	public int delStar(UserProject up) {
		return session.delete("redMapper.delStar", up);
	}

	public int insertProject2(UserProject project) {
		return session.insert("redMapper.insertProject2", project);
	}

	public ArrayList<MemberProject> selectMemberList(String pnum) {
		List<MemberProject> list = session.selectList("redMapper.selectMemberList", pnum);
		return (ArrayList<MemberProject>)list;
	}

}
