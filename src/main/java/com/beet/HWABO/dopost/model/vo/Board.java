package com.beet.HWABO.dopost.model.vo;

import java.sql.Date;

public class Board	implements java.io.Serializable {
	private static final long serialVersionUID = 3333L;
	
	private int boardNum;
	private String boardTitle;
	private String boardContent;
	private String boardWriter;
	private String boardOriginalFileName;
	private String boardRenameFileName;
	private java.sql.Date boardDate; //작성날짜
	private int boardRef; //원글은 자기번호, 댓글은 원글번호
	private int boardReplyRef; //원글은 0, 댓글은 자기번호, 대댓글은 댓글번호
	private int boardLevel; //원글은 1, 댓글2, 대댓글 3
	private int boardReplySeq; //댓글의 순번, 최근 댓글이 1
	private int BoardReadCount; //읽은 조회수 
	
	public Board() {}
	
	
	public Board(int boardNum, String boardTitle, String boardContent) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
	}

	
	public Board(int boardNum, String boardTitle, String boardContent, String boardOriginalFileName,
			String boardRenameFileName) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardOriginalFileName = boardOriginalFileName;
		this.boardRenameFileName = boardRenameFileName;
	}


	public Board(int boardNum, String boardTitle, String boardContent, String boardWriter, String boardOriginalFileName,
			String boardRenameFileName, Date boardDate, int boardRef, int boardReplyRef, int boardLevel,
			int boardReplySeq, int boardReadCount) {
		super();
		this.boardNum = boardNum;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardWriter = boardWriter;
		this.boardOriginalFileName = boardOriginalFileName;
		this.boardRenameFileName = boardRenameFileName;
		this.boardDate = boardDate;
		this.boardRef = boardRef;
		this.boardReplyRef = boardReplyRef;
		this.boardLevel = boardLevel;
		this.boardReplySeq = boardReplySeq;
		BoardReadCount = boardReadCount;
	}


	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public void setBoardOriginalFileName(String boardOriginalFileName) {
		this.boardOriginalFileName = boardOriginalFileName;
	}

	public void setBoardRenameFileName(String boardRenameFileName) {
		this.boardRenameFileName = boardRenameFileName;
	}

	public void setBoardRef(int boardRef) {
		this.boardRef = boardRef;
	}

	public void setBoardReplyRef(int boardReplyRef) {
		this.boardReplyRef = boardReplyRef;
	}

	public void setboardLevel(int boardLevel) {
		this.boardLevel = boardLevel;
	}

	public void setBoardReplySeq(int boardReplySeq) {
		this.boardReplySeq = boardReplySeq;
	}

	public void setBoardReadCount(int boardReadCount) {
		BoardReadCount = boardReadCount;
	}

	public void setBoardDate(java.sql.Date boardDate) {
		this.boardDate = boardDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getBoardNum() {
		return boardNum;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public String getBoardOriginalFileName() {
		return boardOriginalFileName;
	}

	public String getBoardRenameFileName() {
		return boardRenameFileName;
	}

	public int getBoardRef() {
		return boardRef;
	}

	public int getBoardReplyRef() {
		return boardReplyRef;
	}

	public int getBoardLevel() {
		return boardLevel;
	}

	public int getBoardReplySeq() {
		return boardReplySeq;
	}

	public int getBoardReadCount() {
		return BoardReadCount;
	}

	public java.sql.Date getBoardDate() {
		return boardDate;
	}


	@Override
	public String toString() {
		return "Board [boardNum=" + boardNum + ", boardWriter=" + boardWriter + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", boardOriginalFileName=" + boardOriginalFileName
				+ ", boardRenameFileName=" + boardRenameFileName + ", boardRef=" + boardRef + ", boardReplyRef="
				+ boardReplyRef + ", boardLevel=" + boardLevel + ", boardReplySeq=" + boardReplySeq
				+ ", BoardReadCount=" + BoardReadCount + ", boardDate=" + boardDate + "]";
	}

	
	
	
}
