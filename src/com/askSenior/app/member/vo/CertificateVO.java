package com.askSenior.app.member.vo;

import java.util.Date;

public class CertificateVO {
	private int certificateNumber;
	private int memberNumber;
	private String certificateName;
	private String certificateAuthority;
	private Date certificateGetDate;
	
	public CertificateVO() {
		// TODO Auto-generated constructor stub
	}

	public int getCertificateNumber() {
		return certificateNumber;
	}

	public void setCertificateNumber(int certificateNumber) {
		this.certificateNumber = certificateNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getCertificateName() {
		return certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	public String getCertificateAuthority() {
		return certificateAuthority;
	}

	public void setCertificateAuthority(String certificateAuthority) {
		this.certificateAuthority = certificateAuthority;
	}

	public Date getCertificateGetDate() {
		return certificateGetDate;
	}

	public void setCertificateGetDate(Date certificateGetDate) {
		this.certificateGetDate = certificateGetDate;
	}

	@Override
	public String toString() {
		return "CertificateVO [certificateNumber=" + certificateNumber + ", memberNumber=" + memberNumber
				+ ", certificateName=" + certificateName + ", certificateAuthority=" + certificateAuthority
				+ ", certificateGetDate=" + certificateGetDate + "]";
	}

	
	
	
	
}
