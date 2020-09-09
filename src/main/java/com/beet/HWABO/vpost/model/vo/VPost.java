package com.beet.HWABO.vpost.model.vo;

import java.sql.Date;

public class VPost implements java.io.Serializable{
		
	private static final long serialVersionUID = 9999L;
	
	private String vno;
	private String vtitle;
	private String vwriter;
	private java.sql.Date vdate;
	private String alarm;
	private String votecheck;
	private int votenumber;
	
	public VPost() {}

	public VPost(String vno, String vtitle, String vwriter, Date vdate, String alarm, String votecheck,
			int votenumber) {
		super();
		this.vno = vno;
		this.vtitle = vtitle;
		this.vwriter = vwriter;
		this.vdate = vdate;
		this.alarm = alarm;
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

	public String getVwriter() {
		return vwriter;
	}

	public void setVwriter(String vwriter) {
		this.vwriter = vwriter;
	}

	public java.sql.Date getVdate() {
		return vdate;
	}

	public void setVdate(java.sql.Date vdate) {
		this.vdate = vdate;
	}

	public String getAlarm() {
		return alarm;
	}

	public void setAlarm(String alarm) {
		this.alarm = alarm;
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
		return "VPost [vno=" + vno + ", vtitle=" + vtitle + ", vwriter=" + vwriter + ", vdate=" + vdate + ", alarm="
				+ alarm + ", votecheck=" + votecheck + ", votenumber=" + votenumber + "]";
	}
	
	
	
}
