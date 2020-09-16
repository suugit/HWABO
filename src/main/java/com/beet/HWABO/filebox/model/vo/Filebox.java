package com.beet.HWABO.filebox.model.vo;

public class Filebox implements java.io.Serializable{

	private static final long serialVersionUID = 3633L;
	
	private String filerename;
	private String fileoriginname;
	private int kb;
	private String fwriter;
	private String postno;
	private String enrolldate; 
	
	public Filebox() {
		super();
		
	}



	public Filebox(String filerename, String fileoriginname, int kb, String fwriter, String postno, String enrolldate) {
		super();
		this.filerename = filerename;
		this.fileoriginname = fileoriginname;
		this.kb = kb;
		this.fwriter = fwriter;
		this.postno = postno;
		this.enrolldate = enrolldate;
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


	public int getKb() {
		return kb;
	}


	public void setKb(int kb) {
		this.kb = kb;
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

	
	

	public String getEnrolldate() {
		return enrolldate;
	}



	public void setEnrolldate(String enrolldate) {
		this.enrolldate = enrolldate;
	}



	@Override
	public String toString() {
		return "Filebox [filerename=" + filerename + ", fileoriginname=" + fileoriginname + ", kb=" + kb + ", fwriter="
				+ fwriter + ", postno=" + postno + ", enrolldate=" + enrolldate + "]";
	}


	
}













