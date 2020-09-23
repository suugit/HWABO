package com.beet.HWABO.reply.model.vo;

import java.sql.Date;

public class Reply implements java.io.Serializable {

	private static final long serialVersionUID = 39988L;
	
	private String replyno;
	private String no;
	private String content;
	private String ucode;
	private String uname;
	private Date enrolldate;
	private Date secondenroll;
	
	
	public Reply() {
		
		super();
		
	}


	public Reply(String replyno, String no, String content, String ucode, String uname, Date enrolldate,
			Date secondenroll) {
		super();
		this.replyno = replyno;
		this.no = no;
		this.content = content;
		this.ucode = ucode;
		this.uname = uname;
		this.enrolldate = enrolldate;
		this.secondenroll = secondenroll;
	}


	public String getReplyno() {
		return replyno;
	}

	public void setReplyno(String replyno) {
		this.replyno = replyno;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUcode() {
		return ucode;
	}

	public void setUcode(String ucode) {
		this.ucode = ucode;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public Date getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	
	
	public Date getSecondenroll() {
		return secondenroll;
	}


	public void setSecondenroll(Date secondenroll) {
		this.secondenroll = secondenroll;
	}


	@Override
	public String toString() {
		return "Reply [replyno=" + replyno + ", no=" + no + ", content=" + content + ", ucode=" + ucode + ", uname="
				+ uname + ", enrolldate=" + enrolldate + ", secondenroll=" + secondenroll + "]";
	}


	
	
	 
	
}
