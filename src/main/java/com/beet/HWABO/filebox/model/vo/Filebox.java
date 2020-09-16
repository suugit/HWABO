package com.beet.HWABO.filebox.model.vo;

import java.sql.Date;

public class Filebox implements java.io.Serializable{

	private static final long serialVersionUID = 3633L;
	
	private String filerename;
	private String fileoriginname;
	private String kb;
	private String kind;
	private String fwriter;
	private String postno;
	private Date enrolldate; 
	private String pnum;
	
	public Filebox() {
		super();
		
	}

	public Filebox(String filerename, String fileoriginname, String kb, String kind, String fwriter, String postno,
			Date enrolldate, String pnum) {
		super();
		this.filerename = filerename;
		this.fileoriginname = fileoriginname;
		this.kb = kb;
		this.kind = kind;
		this.fwriter = fwriter;
		this.postno = postno;
		this.enrolldate = enrolldate;
		this.pnum = pnum;
	}

	public String getFilerename() {
		return filerename;
	}

	public void setFilerename(String filerename) {
		this.filerename = filerename;
	}

	public String getFileoriginname() {
		return fileoriginname;
	}

	public void setFileoriginname(String fileoriginname) {
		this.fileoriginname = fileoriginname;
	}

	public String getKb() {
		return kb;
	}

	public void setKb(String kb) {
		this.kb = kb;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getFwriter() {
		return fwriter;
	}

	public void setFwriter(String fwriter) {
		this.fwriter = fwriter;
	}

	public String getPostno() {
		return postno;
	}

	public void setPostno(String postno) {
		this.postno = postno;
	}

	public Date getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	@Override
	public String toString() {
		return "Filebox [filerename=" + filerename + ", fileoriginname=" + fileoriginname + ", kb=" + kb + ", kind="
				+ kind + ", fwriter=" + fwriter + ", postno=" + postno + ", enrolldate=" + enrolldate + ", pnum=" + pnum
				+ "]";
	}



	
}













