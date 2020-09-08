package com.beet.HWABO.admin.model.vo;

public class Admin implements java.io.Serializable {
	private static final long serialVersionUID = 4444L;
	
	private String participantsname;
	private String adminwhether;
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(String participantsname, String adminwhether) {
		super();
		this.participantsname = participantsname;
		this.adminwhether = adminwhether;
	}

	public String getParticipantsname() {
		return participantsname;
	}

	public void setParticipantsname(String participantsname) {
		this.participantsname = participantsname;
	}

	public String getAdminwhether() {
		return adminwhether;
	}

	public void setAdminwhether(String adminwhether) {
		this.adminwhether = adminwhether;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Admin [participantsname=" + participantsname + ", adminwhether=" + adminwhether + "]";
	}
		
}
