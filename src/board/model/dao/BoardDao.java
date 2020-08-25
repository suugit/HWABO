package board.model.dao;

import static common.JDBCTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import board.model.vo.Board;

public class BoardDao {
	public BoardDao() {
	}

	public ArrayList<Board> selectTop3(Connection conn) {
		ArrayList<Board> list = new ArrayList<Board>();
		Statement stmt = null;
		ResultSet rset = null;

		String query = "select * from (select rownum rnum, board_num, board_title, board_readcount "
				+ "from (select * from board where board_level = 0 order by board_readcount desc)) "
				+ "where rnum >= 1 and rnum <= 3";

		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			while (rset.next()) {
				Board board = new Board();

				board.setBoardNum(rset.getInt("board_num"));
				board.setBoardTitle(rset.getString("board_title"));
				board.setBoardReadCount(rset.getInt("board_readcount"));

				list.add(board);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}

	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		String query = "select count(*) from board";

		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);

			if (rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}
		return listCount;
	}

	public ArrayList<Board> selectList(Connection conn, int currentPage, int limit) {
		ArrayList<Board> list = new ArrayList<Board>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		 String query="select * from (select rownum rnum, board_num, board_title, board_writer, board_content, board_original_filename, board_rename_filename, board_date, board_level, board_ref, board_reply_ref, board_reply_seq, board_readcount from (select * from board order by board_ref desc, board_reply_ref desc, board_level asc, board_reply_seq asc)) where rnum >= ? and rnum <= ? ";
	
//		String query = "select * from (select rownum rnum, board_num, board_title, board_writer, board_content, board_original_filename, board_rename_filename, board_date, board_level, board_ref, board_reply_ref, board_reply_seq, board_readcount from (select * from board order by board_ref desc)) where rnum >= ? and rnum <= ?";
		int startRow = (currentPage - 1) * limit + 1; // 1페이지는 1~10, 3은 3~12, 30 이면 31~4
		int endRow = startRow + limit - 1;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Board board = new Board();

				board.setBoardNum(rset.getInt("board_num"));
				board.setBoardTitle(rset.getString("board_title"));
				board.setBoardWriter(rset.getString("board_Writer"));
				board.setBoardContent(rset.getString("board_content"));
				board.setBoardOriginalFileName(rset.getString("board_original_filename"));
				board.setBoardRenameFileName(rset.getString("board_Rename_Filename"));
				board.setBoardDate(rset.getDate("board_date"));
				board.setboardLevel(rset.getInt("board_Level"));
				board.setBoardRef(rset.getInt("board_ref"));
				board.setBoardReplyRef(rset.getInt("board_reply_ref"));
				board.setBoardReplySeq(rset.getInt("board_reply_seq"));
				board.setBoardReadCount(rset.getInt("board_readcount"));
				
				list.add(board);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insertOriginBoard(Connection conn, Board board) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into board values ("
				+ "(select max(board_num) + 1 from board),?,?,?,?,?,sysdate, 0,"
				+ "(select max(board_num) + 1 from board), default, default, default)  "; //댓글은 default갑 ㅏ꾸러ㅑ

		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board.getBoardTitle());
			pstmt.setString(2, board.getBoardWriter());
			pstmt.setString(3, board.getBoardContent());
			pstmt.setString(4, board.getBoardOriginalFileName());
			pstmt.setString(5, board.getBoardRenameFileName());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
				
		return result;
	}

	public int addReadCount(Connection conn, int boardNum) {
		//조회수 1증가
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update board set board_readCount = board_readCount + 1 where board_num = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardNum);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	

	public Board selectBoard(Connection conn, int boardNum) {
		Board board = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select * from board where board_num=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,boardNum);
			
			rset= pstmt.executeQuery();
			
			if(rset.next()) {
				board = new Board();
				
				board.setBoardNum(boardNum);
				board.setBoardTitle(rset.getString("board_Title"));
				board.setBoardWriter(rset.getString("board_writer"));
				board.setBoardContent(rset.getString("board_content"));
				board.setBoardOriginalFileName(rset.getString("board_Original_FileName"));
				board.setBoardRenameFileName(rset.getString("board_rename_filename"));
				board.setBoardDate(rset.getDate("board_date"));
				board.setboardLevel(rset.getInt("board_level"));
				board.setBoardRef(rset.getInt("board_ref"));
				board.setBoardReplyRef(rset.getInt("board_Reply_Ref"));
				board.setBoardReplySeq(rset.getInt("board_reply_Seq"));
				board.setBoardReadCount(rset.getInt("board_readcount"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return board;
	}

	public int updateReplySeq(Connection conn, Board reply) {
		int result = 0;
		PreparedStatement pstmt = null;
		//레벨이 2혹은 3이냐에 따라 쿼리문 차이남 
		String query = null;
		
		if(reply.getBoardLevel() == 1) {
			query = "update board set board_reply_seq = (board_reply_seq + 1) where board_ref= ? and board_reply_ref = ?";
		}
		if(reply.getBoardLevel() == 2) {
			query = "update board set board_reply_seq = (board_reply_seq + 1) where board_ref= ? and board_level = ? and board_reply_ref = ?";
		}
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reply.getBoardRef());
			pstmt.setInt(2, reply.getBoardLevel());
			if(reply.getBoardLevel() == 2) {
				pstmt.setInt(3, reply.getBoardReplyRef());
			}
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertReply(Connection conn, Board reply) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = null;
	
		if(reply.getBoardLevel() == 1) {
			query = "insert into board values ("
			+ "(select max(board_num) + 1 from board),?,?,?,null,null,sysdate, 1, ?, "
			+ "(select max(board_num) + 1 from board), ?, default)";
		}
		if(reply.getBoardLevel() == 2) {
			query = "insert into board values ("
					+ "(select max(board_num) + 1 from board),?,?,?,null,null,sysdate, 2, ?, ?, ?, default)";
		}
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, reply.getBoardTitle());
			pstmt.setString(2, reply.getBoardWriter());
			pstmt.setString(3, reply.getBoardContent());
			pstmt.setInt(4, reply.getBoardRef());
			if(reply.getBoardLevel() == 1) {
				pstmt.setInt(5, reply.getBoardReplySeq());
			}
			if(reply.getBoardLevel() == 2) {
				pstmt.setInt(5, reply.getBoardReplyRef());
				pstmt.setInt(6, reply.getBoardReplySeq());
			}
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteBoard(Connection conn, int boardNum, int boardLevel) {
        PreparedStatement pstmt = null;
        int result = 0 ;
        
        /*
         * String query = "delete from board where board_ref = ?"; // 원글삭제하면 댓글, 대댓글 전부
         * 삭제하겠다는 쿼리문
         */     
        
        String query = "delete from board ";
        if(boardLevel == 0) {       //원글 삭제시 댓글 대댓글 같이 삭제됨
            query += "where board_ref = ?"; 
        }
        if(boardLevel == 1) {       // 댓글 삭제시 대댓글 같이 삭제됨
            query += "where board_reply_ref = ?";
        }   
        if(boardLevel == 2) {       // 대댓글은 혼자만 삭제
            query += "where board_num = ?";
        }   
        try {
            pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, boardNum);
            
            result = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            close(pstmt);
        }
        return result;
    }

	public int updateReply(Connection conn, Board reply) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update board set board_title = ?, board_content = ? where board_num = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, reply.getBoardTitle());
			pstmt.setString(2, reply.getBoardContent());
			pstmt.setInt(3, reply.getBoardNum());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public int updateOrigin(Connection conn, Board board) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update board set board_title =?, board_content = ?, "
				+ "board_original_filename = ?, board_rename_filename =? where board_num = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board.getBoardTitle());
			pstmt.setString(2, board.getBoardContent());
			pstmt.setString(3, board.getBoardOriginalFileName());
			pstmt.setString(4, board.getBoardRenameFileName());
			pstmt.setInt(5, board.getBoardNum());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
		
	}