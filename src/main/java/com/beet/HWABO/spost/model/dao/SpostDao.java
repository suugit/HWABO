package com.beet.HWABO.spost.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;
import com.sun.org.slf4j.internal.LoggerFactory;

@Repository("spostDao")
public class SpostDao {
	@Autowired
	private SqlSessionTemplate session;
	
	private com.sun.org.slf4j.internal.Logger logger = LoggerFactory.getLogger(SpostDao.class);
	
	public SpostDao() {}
	
	//-------- Spost -------------------------------------------------------------------------------------------------
		
		public int insertSpost(Spost spost) {
			return session.insert("spostMapper.insertSpost", spost);
		}

		
		public int deleteSpost(String sno) {
			return session.delete("spostMapper.deleteSpost", sno);
		}

		
		public int updateSpost(Spost spost) {
			return session.update("spostMapper.updateSpost", spost);
		}

		
		public int insertSpostLove(String sno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
		public int deleteSpostUnlove(String sno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
		public String selectSpostAlarm(String sno) {
			// TODO Auto-generated method stub
			return null;
		}
		
		public Spost selectOneSpost(String sno) {
			return session.selectOne("spostMapper.selectOneSpost", sno);
		}

		
	//-------- Post -------------------------------------------------------------------------------------------------	
		
		public ArrayList<Post> selectPostTest() {
			List<Post> list1 = session.selectList("postMapper.selectSpost");
			List<Post> list2 = session.selectList("postMapper.selectBpost");
		/*
		 * List<Post> list3 = session.selectList("postMapper.selectBpost"); List<Post>
		 * list4 = session.selectList("postMapper.selectDopost");
		 */

			List<Post> list = new ArrayList<>();
			list.addAll(list1);
			list.addAll(list2);
		/*
		 * list.addAll(list3); list.addAll(list4);
		 */
			
			for(Post p : list) {
				System.out.println(p.toString());
			}
			return (ArrayList<Post>)list;
		}
		
	
		public ArrayList<Post> selectMyPost() {
			// TODO Auto-generated method stub
			return null;
		}
		

		public ArrayList<Post> selectPost(String postno) {
			// TODO Auto-generated method stub
			return null;
		}

	
		public Post selectOneView(String postno) {
			// TODO Auto-generated method stub
			return null;
		}

	
		public int insertPostReply(String postno) {
			// TODO Auto-generated method stub
			return 0;
		}

	
		public int updatePostReply(String postno) {
			// TODO Auto-generated method stub
			return 0;
		}

	
		public int deletePostReply(String postno) {
			// TODO Auto-generated method stub
			return 0;
		}

		
	//-------- Member -------------------------------------------------------------------------------------------------
	
		public ArrayList<Member> selectMyTeam(String num) {
			// TODO Auto-generated method stub
			return null;
		}

	
		public Member selectMyInfo(String ucode) {
			// TODO Auto-generated method stub
			return null;
		}

}
