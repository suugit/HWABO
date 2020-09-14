package com.beet.HWABO.vpost.model.vo;

import java.sql.Date;

public class VPost implements java.io.Serializable{
		
	private static final long serialVersionUID = 9999L;
	
	private String vno;
	private String vtitle;
	private String vucode;
	private String vwriter;
	private String valarm;
	private String vcontent;
	private java.sql.Date venrolldate;
	
	private String votecheck;
	private int votenumber;
	
	
	public VPost() {}


	public VPost(String vno, String vtitle, String vucode, String vwriter, String valarm, String vcontent,
			Date venrolldate, String votecheck, int votenumber) {
		super();
		this.vno = vno;
		this.vtitle = vtitle;
		this.vucode = vucode;
		this.vwriter = vwriter;
		this.valarm = valarm;
		this.vcontent = vcontent;
		this.venrolldate = venrolldate;
		this.votecheck = votecheck;
		this.votenumber = votenumber;
	}


	public String getVno() {
		return vno;
	}


	public void setVno(String vno) {
		this.vno = vno;
	}


	public String getVtitle() {
		return vtitle;
	}


	public void setVtitle(String vtitle) {
		this.vtitle = vtitle;
	}


	public String getVucode() {
		return vucode;
	}


	public void setVucode(String vucode) {
		this.vucode = vucode;
	}


	public String getVwriter() {
		return vwriter;
	}


	public void setVwriter(String vwriter) {
		this.vwriter = vwriter;
	}


	public String getValarm() {
		return valarm;
	}


	public void setValarm(String valarm) {
		this.valarm = valarm;
	}


	public String getVcontent() {
		return vcontent;
	}


	public void setVcontent(String vcontent) {
		this.vcontent = vcontent;
	}


	public java.sql.Date getVenrolldate() {
		return venrolldate;
	}


	public void setVenrolldate(java.sql.Date venrolldate) {
		this.venrolldate = venrolldate;
	}


	public String getVotecheck() {
		return votecheck;
	}


	public void setVotecheck(String votecheck) {
		this.votecheck = votecheck;
	}


	public int getVotenumber() {
		return votenumber;
	}


	public void setVotenumber(int votenumber) {
		this.votenumber = votenumber;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "VPost [vno=" + vno + ", vtitle=" + vtitle + ", vucode=" + vucode + ", vwriter=" + vwriter + ", valarm="
				+ valarm + ", vcontent=" + vcontent + ", venrolldate=" + venrolldate + ", votecheck=" + votecheck
				+ ", votenumber=" + votenumber + "]";
	}


	
	
	
	
}
