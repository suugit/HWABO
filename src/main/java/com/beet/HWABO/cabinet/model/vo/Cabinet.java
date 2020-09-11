package com.beet.HWABO.cabinet.model.vo;

import java.util.Date;

public class Cabinet implements java.io.Serializable{

	private static final long serialVersionUID = 3311L;
	
	private String ucode;
	private String no;
	private Date enrolldate;
	
	public Cabinet() {
		super();
	}

	public Cabinet(String ucode, String no, Date enrolldate) {
		super();
		this.ucode = ucode;
		this.no = no;
		this.enrolldate = enrolldate;
	}

	public String getUcode() {
		return ucode;
	}

	public void setUcode(String ucode) {
		this.ucode = ucode;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public Date getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	@Override
	public String toString() {
		return "Cabinet [ucode=" + ucode + ", no=" + no + ", enrolldate=" + enrolldate + "]";
	}
	
	
	
	
}
