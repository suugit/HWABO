package com.beet.HWABO.spost.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Spost implements Serializable{
	private static final long serialVersionUID = 2323L;
	
	private String sno;
	private String stitle;
	private String swriter;
	private String sucode;
	private Date sstartday;
	private Date sendday;
	private String splace;
	private String salarm;
	private String scontent;
	private Date senrolldate;
	private String sopen;
	
	public Spost() {
		super();
	}

	public Spost(String sno, String stitle, String swriter, String sucode, Date sstartday, Date sendday, String splace,
			String salarm, String scontent, Date senrolldate, String sopen) {
		super();
		this.sno = sno;
		this.stitle = stitle;
		this.swriter = swriter;
		this.sucode = sucode;
		this.sstartday = sstartday;
		this.sendday = sendday;
		this.splace = splace;
		this.salarm = salarm;
		this.scontent = scontent;
		this.senrolldate = senrolldate;
		this.sopen = sopen;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getStitle() {
		return stitle;
	}

	public void setStitle(String stitle) {
		this.stitle = stitle;
	}

	public String getSwriter() {
		return swriter;
	}

	public void setSwriter(String swriter) {
		this.swriter = swriter;
	}

	public String getSucode() {
		return sucode;
	}

	public void setSucode(String sucode) {
		this.sucode = sucode;
	}

	public Date getSstartday() {
		return sstartday;
	}

	public void setSstartday(Date sstartday) {
		this.sstartday = sstartday;
	}

	public Date getSendday() {
		return sendday;
	}

	public void setSendday(Date sendday) {
		this.sendday = sendday;
	}

	public String getSplace() {
		return splace;
	}

	public void setSplace(String splace) {
		this.splace = splace;
	}

	public String getSalarm() {
		return salarm;
	}

	public void setSalarm(String salarm) {
		this.salarm = salarm;
	}

	public String getScontent() {
		return scontent;
	}

	public void setScontent(String scontent) {
		this.scontent = scontent;
	}

	public Date getSenrolldate() {
		return senrolldate;
	}

	public void setSenrolldate(Date senrolldate) {
		this.senrolldate = senrolldate;
	}

	public String getSopen() {
		return sopen;
	}

	public void setSopen(String sopen) {
		this.sopen = sopen;
	}

	@Override
	public String toString() {
		return "Spost [sno=" + sno + ", stitle=" + stitle + ", swriter=" + swriter + ", sucode=" + sucode
				+ ", sstartday=" + sstartday + ", sendday=" + sendday + ", splace=" + splace + ", salarm=" + salarm
				+ ", scontent=" + scontent + ", senrolldate=" + senrolldate + ", sopen=" + sopen + "]";
	}
	
	
	
}

