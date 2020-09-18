package com.beet.HWABO.dopost.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import board.model.vo.Board;
import board.model.vo.Scope;

public class BoardDao {
		public BoardDao() {
		}
	
		public ArrayList<Board> selectTop3(SqlSession session) {
			return (ArrayList)session.selectList("boardMapper.selectTop3");
		}
	
		public int getListCount(SqlSession session) {
			return session.selectOne("boardMapper.getListCount");
		}
	
		
		public int insertOriginBoard(SqlSession session, Board board) {
			return session.insert("boardMapper.insertOriginBoard",board);
		}
	
		public int addReadCount(SqlSession session, int boardNum) {
			return session.update("boardMapper.addReadCount",boardNum);
		}
	
		public Board selectBoard(SqlSession session, int boardNum) {
			return session.selectOne("boardMapper.selectBoard",boardNum);
		}
	
		public int updateReplySeq(SqlSession session, Board reply) {
			return session.update("boardMapper.updateReplySeq",reply);
		}
	
		public int insertReply(SqlSession session, Board reply) {
			return session.insert("boardMapper.insertReply",reply);
		}
	
		public int deleteBoard(SqlSession session, Scope s) {
			return session.delete("boardMapper.deleteBoard",s);
	    }
	
		public int updateReply(SqlSession session, Board reply) {
			return session.update("boardMapper.updateReply",reply);
		}
		
		public int updateOrigin(SqlSession session, Board board) {
			return session.update("boardMapper.updateOrigin",board);
		}

		public ArrayList<Board> selectList(SqlSession session, Scope s) {
			return (ArrayList)session.selectList("boardMapper.selectList",s);
		}
		
}