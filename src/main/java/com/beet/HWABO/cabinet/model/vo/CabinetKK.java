package com.beet.HWABO.cabinet.model.vo;

public class CabinetKK  implements java.io.Serializable {
	private static final long serialVersionUID = 3256L;
	
	private String ucode;
	private String pnum;

	public CabinetKK() {}

	public CabinetKK(String ucode, String pnum) {
		super();
		this.ucode = ucode;
		this.pnum = pnum;
	}

	public String getUcode() {
		return ucode;
	}

	public void setUcode(String ucode) {
		this.ucode = ucode;
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	@Override
	public String toString() {
		return "CabinetKK [ucode=" + ucode + ", pnum=" + pnum + "]";
	}
	
	

}
