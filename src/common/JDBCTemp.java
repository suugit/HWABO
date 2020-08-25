package common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JDBCTemp {
	
//    public static Connection getConnection() {
//    	Connection conn = null;
//    	Properties prop = new Properties();
//    	
//    	try { // 파일 읽어 올때 에러니까 try안에서 진행
//    		  // 웹에서는 경로 잡는 것이 조금 다르다.
//    		
//    		// 톰캣이 구동하고 있는 현재 웹프로젝트(웹어플리케이션)에서의 경로 지정이 필요함
//    		// 또는 현재 실행하고 있는 클래스 위치에서부터의 경로지정도 가능함(JDBCTemp클래스의 위치)
//    		
//    		//현재 실행중인 JDBCTemp.class 의 위치부터 파악해보기
//    		String currentPath = JDBCTemp.class.getResource("./").getPath();   // ./ = JDBCTemp가 있는 현재 위치의미
//    		prop.load(new FileReader(currentPath + "jdbc.properties"));
//    		
//    		String driver = prop.getProperty("driver");
//    		String url = prop.getProperty("url");
//    		String user = prop.getProperty("user");
//    		String passwd = prop.getProperty("passwd");
//			
//    		Class.forName(driver);
//    		
//    		conn = DriverManager.getConnection(url, user, passwd);
//    		conn.setAutoCommit(false);
//    		
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//    	return conn;
//    }
	
	//톰캣(WAS)가 제공하는 DBCP(DataBase Connection Pool)를 이용해서 연결처리 
	//content directory(web)/META_INF/context.xml 파일에 설정됨 
	 public static Connection getConnection() {
	      Connection conn = null;
	      
	      try {
	         //context.xml 의 리소스 엘리먼트의 설정값을 읽어와서 dbcp에서 커넥션을 받도록 처리
	         Context initContext = new InitialContext();
	         DataSource ds = (DataSource)initContext.lookup("java:comp/env/jdbc/oraDB");
	         conn = ds.getConnection();
	         conn.setAutoCommit(false);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return conn;
	   }


	public static void close(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) { //prepared도 Statement의 후손이니까 이걸로 닫을 수 있다.
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if(rset != null && !rset.isClosed()) {
				rset.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
}

