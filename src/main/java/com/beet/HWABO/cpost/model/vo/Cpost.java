package com.beet.HWABO.cpost.model.vo;

import java.sql.Date;

public class Cpost implements java.io.Serializable{
	private static final long serialVersionUId = 1133L;
	
	private String cno;
	private String cpnum;
	private String ctitle;
	private String cucode;
	private String cwriter;
	private String ccontent;
	private java.sql.Date cenrolldate;
	private String copen;
	private String clove;
	private String hashtags;
	private String mentions;
	private String crwriter;
	private String crcontent;
	private String addonuse;
	private String ofile1;
	private String rfile1;
	private String ofile2;
	private String rfile2;
	private String ofile3;
	private String rfile3;
	
	
	public Cpost() {}


	public Cpost(String cno, String cpnum, String ctitle, String cucode, String cwriter, String ccontent,
			Date cenrolldate, String copen, String clove, String hashtags, String mentions, String crwriter,
			String crcontent, String addonuse) {
		super();
		this.cno = cno;
		this.cpnum = cpnum;
		this.ctitle = ctitle;
		this.cucode = cucode;
		this.cwriter = cwriter;
		this.ccontent = ccontent;
		this.cenrolldate = cenrolldate;
		this.copen = copen;
		this.clove = clove;
		this.hashtags = hashtags;
		this.mentions = mentions;
		this.crwriter = crwriter;
		this.crcontent = crcontent;
		this.addonuse = addonuse;
	}


	public Cpost(String cno, String cpnum, String ctitle, String cucode, String cwriter, String ccontent,
			Date cenrolldate, String copen, String clove, String hashtags, String mentions, String crwriter,
			String crcontent, String addonuse, String ofile1, String rfile1, String ofile2, String rfile2,
			String ofile3, String rfile3) {
		super();
		this.cno = cno;
		this.cpnum = cpnum;
		this.ctitle = ctitle;
		this.cucode = cucode;
		this.cwriter = cwriter;
		this.ccontent = ccontent;
		this.cenrolldate = cenrolldate;
		this.copen = copen;
		this.clove = clove;
		this.hashtags = hashtags;
		this.mentions = mentions;
		this.crwriter = crwriter;
		this.crcontent = crcontent;
		this.addonuse = addonuse;
		this.ofile1 = ofile1;
		this.rfile1 = rfile1;
		this.ofile2 = ofile2;
		this.rfile2 = rfile2;
		this.ofile3 = ofile3;
		this.rfile3 = rfile3;
	}


	public String getCno() {
		return cno;
	}


	public void setCno(String cno) {
		this.cno = cno;
	}


	public String getCpnum() {
		return cpnum;
	}


	public void setCpnum(String cpnum) {
		this.cpnum = cpnum;
	}


	public String getCtitle() {
		return ctitle;
	}


	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}


	public String getCucode() {
		return cucode;
	}


	public void setCucode(String cucode) {
		this.cucode = cucode;
	}


	public String getCwriter() {
		return cwriter;
	}


	public void setCwriter(String cwriter) {
		this.cwriter = cwriter;
	}


	public String getCcontent() {
		return ccontent;
	}


	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}


	public java.sql.Date getCenrolldate() {
		return cenrolldate;
	}


	public void setCenrolldate(java.sql.Date cenrolldate) {
		this.cenrolldate = cenrolldate;
	}


	public String getCopen() {
		return copen;
	}


	public void setCopen(String copen) {
		this.copen = copen;
	}


	public String getClove() {
		return clove;
	}


	public void setClove(String clove) {
		this.clove = clove;
	}


	public String getHashtags() {
		return hashtags;
	}


	public void setHashtags(String hashtags) {
		this.hashtags = hashtags;
	}


	public String getMentions() {
		return mentions;
	}


	public void setMentions(String mentions) {
		this.mentions = mentions;
	}


	public String getCrwriter() {
		return crwriter;
	}


	public void setCrwriter(String crwriter) {
		this.crwriter = crwriter;
	}


	public String getCrcontent() {
		return crcontent;
	}


	public void setCrcontent(String crcontent) {
		this.crcontent = crcontent;
	}


	public String getAddonuse() {
		return addonuse;
	}


	public void setAddonuse(String addonuse) {
		this.addonuse = addonuse;
	}


	public String getOfile1() {
		return ofile1;
	}


	public void setOfile1(String ofile1) {
		this.ofile1 = ofile1;
	}


	public String getRfile1() {
		return rfile1;
	}


	public void setRfile1(String rfile1) {
		this.rfile1 = rfile1;
	}


	public String getOfile2() {
		return ofile2;
	}


	public void setOfile2(String ofile2) {
		this.ofile2 = ofile2;
	}


	public String getRfile2() {
		return rfile2;
	}


	public void setRfile2(String rfile2) {
		this.rfile2 = rfile2;
	}


	public String getOfile3() {
		return ofile3;
	}


	public void setOfile3(String ofile3) {
		this.ofile3 = ofile3;
	}


	public String getRfile3() {
		return rfile3;
	}


	public void setRfile3(String rfile3) {
		this.rfile3 = rfile3;
	}


	@Override
	public String toString() {
		return "Cpost [cno=" + cno + ", cpnum=" + cpnum + ", ctitle=" + ctitle + ", cucode=" + cucode + ", cwriter="
				+ cwriter + ", ccontent=" + ccontent + ", cenrolldate=" + cenrolldate + ", copen=" + copen + ", clove="
				+ clove + ", hashtags=" + hashtags + ", mentions=" + mentions + ", crwriter=" + crwriter
				+ ", crcontent=" + crcontent + ", addonuse=" + addonuse + ", ofile1=" + ofile1 + ", rfile1=" + rfile1
				+ ", ofile2=" + ofile2 + ", rfile2=" + rfile2 + ", ofile3=" + ofile3 + ", rfile3=" + rfile3 + "]";
	}

	
	
	

}
