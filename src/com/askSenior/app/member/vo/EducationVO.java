package com.askSenior.app.member.vo;

import java.util.Date;

public class EducationVO {
	private int educationNumber;
	private int memberNumber;
	private String educationSchool;
	private String educationMajor;
	private Date educationAdmissionDate;
	private Date educationGraduationDate;
	
	public EducationVO() {
		// TODO Auto-generated constructor stub
	}

	public int getEducationNumber() {
		return educationNumber;
	}

	public void setEducationNumber(int educationNumber) {
		this.educationNumber = educationNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getEducationSchool() {
		return educationSchool;
	}

	public void setEducationSchool(String educationSchool) {
		this.educationSchool = educationSchool;
	}

	public String getEducationMajor() {
		return educationMajor;
	}

	public void setEducationMajor(String educationMajor) {
		this.educationMajor = educationMajor;
	}

	public Date getEducationAdmissionDate() {
		return educationAdmissionDate;
	}

	public void setEducationAdmissionDate(Date educationAdmissionDate) {
		this.educationAdmissionDate = educationAdmissionDate;
	}

	public Date getEducationGraduationDate() {
		return educationGraduationDate;
	}

	public void setEducationGraduationDate(Date educationGraduationDate) {
		this.educationGraduationDate = educationGraduationDate;
	}

	@Override
	public String toString() {
		return "EducationVO [educationNumber=" + educationNumber + ", memberNumber=" + memberNumber
				+ ", educationSchool=" + educationSchool + ", educationMajor=" + educationMajor
				+ ", educationAdmissionDate=" + educationAdmissionDate + ", educationGraduationDate="
				+ educationGraduationDate + "]";
	}

	

	
	
	
}
