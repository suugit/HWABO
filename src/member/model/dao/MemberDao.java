package member.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import member.model.vo.Member;

public class MemberDao {
   public MemberDao() {}
   
   public Member loginCheck(Connection conn, String userid, String userpwd) {
      Member member = null;
      PreparedStatement pstmt = null;
      ResultSet rset =null;
      
      String query = "select * from member where userid = ? and userpwd = ? and login_ok='Y' ";
      
      try {
         pstmt = conn.prepareStatement(query);
         pstmt.setString(1, userid);
         pstmt.setString(2, userpwd);
         
         rset = pstmt.executeQuery();
         
         if(rset.next()) {
            member = new Member();
            
            member.setUserid(userid);
            member.setUserpwd(userpwd);
            member.setUsername(rset.getString("username"));
            member.setGender(rset.getString("gender"));
            member.setAge(rset.getInt("age"));
            member.setPhone(rset.getString("phone"));
            member.setEmail(rset.getString("email"));
            member.setHobby(rset.getString("hobby"));
            member.setEtc(rset.getString("etc"));
            member.setEnrollDate(rset.getDate("enroll_date"));
            member.setLastModified(rset.getDate("lastModified"));
            member.setLoginok(rset.getString("login_ok"));
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         close(rset);
         close(pstmt);
      }
      return member;
   }

   
	public int insertMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into member values( ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, sysdate, default )";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserid());
			pstmt.setString(2, member.getUserpwd());
			pstmt.setString(3, member.getUsername());
			pstmt.setString(4, member.getGender());
			pstmt.setInt(5, member.getAge());
			pstmt.setString(6, member.getPhone());
			pstmt.setString(7, member.getEmail());
			pstmt.setString(8, member.getHobby());
			pstmt.setString(9, member.getEtc());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
	         close(pstmt);
		}
		return result;
	}

	
	public Member selectMember(Connection conn, String userid) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query ="select * from member where userid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			
			rset = pstmt.executeQuery();

			if(rset.next()) {
				
				  member = new Member ( userid, rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
						  							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
						  							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return member;
	}

	public int deleteMember(Connection conn, String userid) {
	      int result = 0;
	      
	      PreparedStatement pstmt = null;
	      
	      String query = "delete from member where userid=?";
	      
	      try {
	         pstmt = conn.prepareStatement(query);
	         pstmt.setString(1, userid);
	         
	         result = pstmt.executeUpdate();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         close(pstmt);
	      }
	      
	      return result;
	   }
	
	public int updateMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update member set userpwd=?, age=?, phone=?, email=?, hobby=?, etc=? where userid =? ";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserpwd());
			pstmt.setInt(2, member.getAge());
			pstmt.setString(3, member.getPhone());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getHobby());
			pstmt.setString(6, member.getEtc());
			pstmt.setString(7, member.getUserid());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Member> selectList(Connection conn) {
		ArrayList<Member> list = new ArrayList<Member>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select * from member";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				Member member = new Member (  rset.getString("userid"), rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	public int updateLoginOK(Connection conn, String userid, String loginok) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update member set login_ok=? where userid = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, loginok);
			pstmt.setString(2, userid);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Member> selectSearchUserid(Connection conn, String keyword) {
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where userid like ? " ;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, "%" + keyword + "%");
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Member member = new Member (  rset.getString("userid"), rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Member> selectSearchGender(Connection conn, String keyword) {
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where gender = ? " ;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Member member = new Member (  rset.getString("userid"), rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Member> selectSearchAge(Connection conn, int keyword) {
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where " ;
		
		if(keyword ==60){
			query += "age >= ?" ;
		}else {
			query += "age between ? and ?+9";
		}
		
		try {
			pstmt = conn.prepareStatement(query);
			if(keyword == 60) {
				pstmt.setInt(1, keyword);
			}else {
				pstmt.setInt(1, keyword);
				pstmt.setInt(2, keyword);
			}
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Member member = new Member (  rset.getString("userid"), rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Member> selectSearchEnrollDate(Connection conn, Date begin, Date end) {
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where enroll_date between ? and ?+1 " ;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setDate(1, begin);
			pstmt.setDate(2, end);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Member member = new Member (  rset.getString("userid"), rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}

	public ArrayList<Member> selectSearchLoginOk(Connection conn, String keyword) {
		ArrayList<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from member where login_ok = ? " ;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, keyword);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Member member = new Member (  rset.getString("userid"), rset.getString("userpwd"), rset.getString("username"), rset.getString("gender"), 
							 rset.getInt("age"), rset.getString("phone"), rset.getString("email"), rset.getString("hobby"),
							 rset.getString("etc"), rset.getDate("enroll_date"), rset.getDate("lastmodified"), rset.getString("login_ok") );
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return list;
	}

	public int selectCheckId(Connection conn, String userid) {
		int idcount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "select count(userid) from member where userid = ?"; //같은 아이디 여러개 존재할 수 없음
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userid);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				idcount = rset.getInt(1); //컬럼명이나 컬럼인덱스순번(sleect 절에 나여뢴 순번)으로 써야함  ??라서안된다 햇는데 못들엇다
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return idcount;
	}
	
}
