package com.beet.HWABO.dopost.model.service;

import static common.JDBCTemp.getSession;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import board.model.vo.Scope;
public class BoardService {
	
	public BoardDao bdao = new BoardDao();
	
	public BoardService(){}

	public ArrayList<Board> selectTop3() {
		SqlSession session = getSession();
		
		ArrayList<Board> list = bdao.selectTop3(session);
		session.close();
		return list;
		
	}

	public int getListCount() {
		//현재 테이블에 보드가 몇개인지 개수 카운트
		SqlSession session = getSession();
		int listCount = bdao.getListCount(session);
		session.close();
		return listCount;
	}

	public ArrayList<Board> selectList(int currentPage, int limit) {
		SqlSession session = getSession();
		int startRow = (currentPage - 1) * limit + 1; // 1페이지는 1~10, 3은 3~12, 30 이면 31~4
		int endRow = startRow + limit - 1;
		Scope s = new Scope(startRow,endRow);
		ArrayList<Board> list = bdao.selectList(session, s);
		session.close();
		return list;
	}

	public int insertOriginBoard(Board board) {
		SqlSession session = getSession();
		int result = bdao.insertOriginBoard(session,board);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public void addReadCount(int boardNum) {
		SqlSession session = getSession();
		int result = bdao.addReadCount(session, boardNum);
		if(result > 0) {
			session.commit();
			System.out.println("board-addReadCount-commit");
		}else {
			session.rollback();
			System.out.println("board-addReadCount-rollback");
		}
		session.close();
	}

	public Board selectBoard(int boardNum) {
		SqlSession session = getSession();
		Board board = bdao.selectBoard(session, boardNum);
		session.close();
		return board; 
	}

	public void updateReplySeq(Board reply) {
		SqlSession session = getSession();
		int result = bdao.updateReplySeq(session, reply);
		
		session.close();		
	}

	public int insertReply(Board reply) {
		SqlSession session = getSession();
		int result = bdao.insertReply(session, reply);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}


	public int deleteBoard(int boardNum, int boardLevel) {
		SqlSession session = getSession();
		Scope s = new Scope(boardNum,boardLevel);
		int result = bdao.deleteBoard(session, s);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateReply(Board reply) {
		SqlSession session = getSession();
		int result = bdao.updateReply(session, reply);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateOrigin(Board board) {
		SqlSession session = getSession();
		int result = bdao.updateOrigin(session, board);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}
}
