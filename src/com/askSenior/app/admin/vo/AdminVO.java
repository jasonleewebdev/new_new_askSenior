package com.askSenior.app.admin.vo;

public class AdminVO {
	private String adminID;
	private String adminPassword;
	
	public AdminVO() {
		// TODO Auto-generated constructor stub
	}

	public String getAdminID() {
		return adminID;
	}

	public void setAdminID(String adminID) {
		this.adminID = adminID;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	@Override
	public String toString() {
		return "AdminVO [adminID=" + adminID + ", adminPassword=" + adminPassword + "]";
	}
	
	
}
