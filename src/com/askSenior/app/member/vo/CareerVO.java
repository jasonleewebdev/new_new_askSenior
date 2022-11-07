package com.askSenior.app.member.vo;

import java.util.Date;

public class CareerVO {
	private int careerNumber;
	private int memberNumber;
	private String careerCompany;
	private String careerPosition;
	private Date careerEntryDate;
	private Date careerResignationDate;
	
	public CareerVO() {
		// TODO Auto-generated constructor stub
	}

	public int getCareerNumber() {
		return careerNumber;
	}

	public void setCareerNumber(int careerNumber) {
		this.careerNumber = careerNumber;
	}

	public int getMemberNumber() {
		return memberNumber;
	}

	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}

	public String getCareerCompany() {
		return careerCompany;
	}

	public void setCareerCompany(String careerCompany) {
		this.careerCompany = careerCompany;
	}

	public String getCareerPosition() {
		return careerPosition;
	}

	public void setCareerPosition(String careerPosition) {
		this.careerPosition = careerPosition;
	}

	public Date getCareerEntryDate() {
		return careerEntryDate;
	}

	public void setCareerEntryDate(Date careerEntryDate) {
		this.careerEntryDate = careerEntryDate;
	}

	public Date getCareerResignationDate() {
		return careerResignationDate;
	}

	public void setCareerResignationDate(Date careerResignationDate) {
		this.careerResignationDate = careerResignationDate;
	}

	@Override
	public String toString() {
		return "CareerVO [careerNumber=" + careerNumber + ", memberNumber=" + memberNumber + ", careerCompany="
				+ careerCompany + ", careerPosition=" + careerPosition + ", careerEntryDate=" + careerEntryDate
				+ ", careerResignationDate=" + careerResignationDate + "]";
	}

	
	
	
}
