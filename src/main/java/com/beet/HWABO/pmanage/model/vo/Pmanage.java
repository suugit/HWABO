package com.beet.HWABO.pmanage.model.vo;

public class Pmanage implements java.io.Serializable {
	private static final long serialVersionUID = 44421L;
	
	private String urlname;
	private String pname;
	
	public Pmanage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pmanage(String urlname, String pname) {
		super();
		this.urlname = urlname;
		this.pname = pname;
	}

	public String getUrlname() {
		return urlname;
	}

	public void setUrlname(String urlname) {
		this.urlname = urlname;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Pmanage [urlname=" + urlname + ", pname=" + pname + "]";
	}
	
	
	
	
}
