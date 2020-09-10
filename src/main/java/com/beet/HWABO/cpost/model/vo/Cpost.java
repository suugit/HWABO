package com.beet.HWABO.cpost.model.vo;

import java.sql.Date;

public class Cpost implements java.io.Serializable{
	private static final long serialVersionUId = 1133L;
	
	private String cno;
	private String ctitle;
	private String cwriter;
	private String ccontent;
	private java.sql.Date cenrolldate;
	private String copen;
	private int clove;
	private String hashtags;
	private String mentions;
	private String crwriter;
	private String crcontent;
	private String addonuse;

	
	public Cpost() {}


	public Cpost(String cno, String ctitle, String cwriter, String ccontent, Date cenrolldate, String copen, int clove,
			String hashtags, String mentions, String crwriter, String crcontent, String addonuse) {
		super();
		this.cno = cno;
		this.ctitle = ctitle;
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


	public String getCno() {
		return cno;
	}


	public void setCno(String cno) {
		this.cno = cno;
	}


	public String getCtitle() {
		return ctitle;
	}


	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
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


	public int getClove() {
		return clove;
	}


	public void setClove(int clove) {
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


	@Override
	public String toString() {
		return "Cpost [cno=" + cno + ", ctitle=" + ctitle + ", cwriter=" + cwriter + ", ccontent=" + ccontent
				+ ", cenrolldate=" + cenrolldate + ", copen=" + copen + ", clove=" + clove + ", hashtags=" + hashtags
				+ ", mentions=" + mentions + ", crwriter=" + crwriter + ", crcontent=" + crcontent + ", addonuse="
				+ addonuse + "]";
	}


	
	

}
