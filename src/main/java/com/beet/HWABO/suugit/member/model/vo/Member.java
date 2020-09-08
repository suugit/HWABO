package com.beet.HWABO.suugit.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private static final long serialVersionUId = 1166L;
	
	private String ucode;
	private String uemail;
	private String upwd;
	private String uname;
	private int uphone;
	private String num;
	private String ugroup;
	private String urole;
	private String authst;
	private java.sql.Date udate;
	private String signtype;
	private String accesstoken;
	private String uimg;
	
	public Member(){}

	public Member(String ucode, String uemail, String upwd, String uname, int uphone, String num, String ugroup,
			String urole, String authst, Date udate, String signtype, String accesstoken, String uimg) {
		super();
		this.ucode = ucode;
		this.uemail = uemail;
		this.upwd = upwd;
		this.uname = uname;
		this.uphone = uphone;
		this.num = num;
		this.ugroup = ugroup;
		this.urole = urole;
		this.authst = authst;
		this.udate = udate;
		this.signtype = signtype;
		this.accesstoken = accesstoken;
		this.uimg = uimg;
	}

	public String getUcode() {
		return ucode;
	}

	public void setUcode(String ucode) {
		this.ucode = ucode;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getUphone() {
		return uphone;
	}

	public void setUphone(int uphone) {
		this.uphone = uphone;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getUgroup() {
		return ugroup;
	}

	public void setUgroup(String ugroup) {
		this.ugroup = ugroup;
	}

	public String getUrole() {
		return urole;
	}

	public void setUrole(String urole) {
		this.urole = urole;
	}

	public String getAuthst() {
		return authst;
	}

	public void setAuthst(String authst) {
		this.authst = authst;
	}

	public java.sql.Date getUdate() {
		return udate;
	}

	public void setUdate(java.sql.Date udate) {
		this.udate = udate;
	}

	public String getSigntype() {
		return signtype;
	}

	public void setSigntype(String signtype) {
		this.signtype = signtype;
	}

	public String getAccesstoken() {
		return accesstoken;
	}

	public void setAccesstoken(String accesstoken) {
		this.accesstoken = accesstoken;
	}

	public String getUimg() {
		return uimg;
	}

	public void setUimg(String uimg) {
		this.uimg = uimg;
	}

	@Override
	public String toString() {
		return "Member [ucode=" + ucode + ", uemail=" + uemail + ", upwd=" + upwd + ", uname=" + uname + ", uphone="
				+ uphone + ", num=" + num + ", ugroup=" + ugroup + ", urole=" + urole + ", authst=" + authst
				+ ", udate=" + udate + ", signtype=" + signtype + ", accesstoken=" + accesstoken + ", uimg=" + uimg
				+ "]";
	}
	
	

}
