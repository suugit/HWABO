package com.beet.HWABO.member.model.vo;

public class PjMember implements java.io.Serializable{
	private static final long serialVersionUID = 118554L;
	
	private String pnum;
	private String ucode;
	
	public PjMember() {
		super();
	}
	
	public PjMember(String pnum, String ucode) {
		super();
		this.pnum = pnum;
		this.ucode = ucode;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getUcode() {
		return ucode;
	}
	public void setUcode(String ucode) {
		this.ucode = ucode;
	}
	@Override
	public String toString() {
		return "PjMember [pnum=" + pnum + ", ucode=" + ucode + "]";
	}
	
	
}
