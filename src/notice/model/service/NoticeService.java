package notice.model.service;

import static common.JDBCTemp.close;
import static common.JDBCTemp.commit;
import static common.JDBCTemp.getConnection;
import static common.JDBCTemp.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;

public class NoticeService {
	NoticeDao ndao = new NoticeDao(); // DI 주입
	
	public NoticeService() {}
	
	public ArrayList<Notice> selectAll(){
		Connection conn = getConnection();
		ArrayList<Notice> list = ndao.selectList(conn);
		close(conn);
		return list;
	}
	
	public Notice selectNotice(int noticeNo) {
		Connection conn = getConnection();
		Notice notice = ndao.selectOne(conn, noticeNo);
		close(conn);
		return notice;
	}
	
	public int insertNotice(Notice notice) {
		Connection conn = getConnection();
		int result = ndao.insertNotice(conn, notice);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int updateNotice(Notice notice) {
		Connection conn = getConnection();
		int result = ndao.updateNotice(conn, notice);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	public int deleteNotice(int noticeNo) {
		Connection conn = getConnection();
		int result = ndao.deleteNotice(conn, noticeNo);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	}

	public ArrayList<Notice> selectNewTop3() {
		Connection conn = getConnection();
		ArrayList<Notice> list = ndao.selectNewTop3(conn);
		close(conn);
		return list;
	}
	
}
