package com.beet.HWABO.spost.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.abc.model.vo.Love;
import com.beet.HWABO.abc.model.vo.Postreply;
import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;
import com.sun.org.slf4j.internal.LoggerFactory;

@Repository("spostDao")
public class SpostDao {
	@Autowired
	private SqlSessionTemplate session;

	private com.sun.org.slf4j.internal.Logger logger = LoggerFactory.getLogger(SpostDao.class);

	public SpostDao() {
	}

// -------- Spost -------------------------------------------------------------------------------------------------

	public Spost selectOneSpost(String sno) {
		return session.selectOne("spostMapper.selectOneSpost", sno);
	}

	public ArrayList<Spost> selectAllSpost(){
		List<Spost> list =  session.selectList("spostMapper.selectAllSpost");
		return (ArrayList<Spost>)list;
	}
	
	public int insertSpost(Spost spost) {
		return session.insert("spostMapper.insertSpost", spost);
	}

	public int deleteSpost(String sno) {
		return session.delete("spostMapper.deleteSpost", sno);
	}

	public int updateSpost(Spost spost) {
		return session.update("spostMapper.updateSpost", spost);
	}

	
// -------- Bpost --------------------------------------------------------------------------------------------------

	public ArrayList<Bpost> selectMyBPOST(PjMember pmember) {
		List<Bpost> list = session.selectList("postMapper.selectBpost", pmember);
		return (ArrayList<Bpost>) list;
	}
		
	public Bpost selectOneBpost(String bno) {
		return session.selectOne("postMapper.selectOneBpost", bno);
	}
	
		
// -------- Post ----------------------------------------------------------------------------------------------------
	
	public ArrayList<Post> selectMyPost(PjMember pmember) {
		List<Post> list = session.selectList("postMapper.selectPost", pmember);
		return (ArrayList<Post>) list;
	}
	
	
// -------- Love ------------------------------------------------------------------------------------------------------
	
	public int insertSpostLove(Love love) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteSpostLove(Love love) {
		// TODO Auto-generated method stub
		return 0;
	}
	
// -------- Postreply -------------------------------------------------------------------------------------------------

	public int insertPostReply(Postreply reply) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int deletePostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int updatePostReply(String postno) {
		// TODO Auto-generated method stub
		return 0;
	}




}
