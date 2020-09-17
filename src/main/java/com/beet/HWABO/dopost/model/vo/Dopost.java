package com.beet.HWABO.dopost.model.vo;

import java.sql.Date;

public class Dopost implements java.io.Serializable{
	private static final long serialVersionUID = 4444234L;
	
	private String dno;
	private String dtitle;
	private String ducode;
	private String dwriter;
	private String dcontent;
	private java.sql.Date denrolldate;
	private String dopen;
	private String dpnum;
	
	public Dopost() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Dopost(String dno, String dtitle, String ducode, String dwriter, String dcontent, Date denrolldate,
			String dopen, String dpnum) {
		super();
		this.dno = dno;
		this.dtitle = dtitle;
		this.ducode = ducode;
		this.dwriter = dwriter;
		this.dcontent = dcontent;
		this.denrolldate = denrolldate;
		this.dopen = dopen;
		this.dpnum = dpnum;
	}

	public String getDno() {
		return dno;
	}

	public void setDno(String dno) {
		this.dno = dno;
	}

	public String getDtitle() {
		return dtitle;
	}

	public void setDtitle(String dtitle) {
		this.dtitle = dtitle;
	}

	public String getDucode() {
		return ducode;
	}

	public void setDucode(String ducode) {
		this.ducode = ducode;
	}

	public String getDwriter() {
		return dwriter;
	}

	public void setDwriter(String dwriter) {
		this.dwriter = dwriter;
	}

	public String getDcontent() {
		return dcontent;
	}

	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}

	public java.sql.Date getDenrolldate() {
		return denrolldate;
	}

	public void setDenrolldate(java.sql.Date denrolldate) {
		this.denrolldate = denrolldate;
	}

	public String getDopen() {
		return dopen;
	}

	public void setDopen(String dopen) {
		this.dopen = dopen;
	}

	public String getDpnum() {
		return dpnum;
	}

	public void setDpnum(String dpnum) {
		this.dpnum = dpnum;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Dopost [dno=" + dno + ", dtitle=" + dtitle + ", ducode=" + ducode + ", dwriter=" + dwriter
				+ ", dcontent=" + dcontent + ", denrolldate=" + denrolldate + ", dopen=" + dopen + ", dpnum=" + dpnum
				+ "]";
	}

	
	

}
