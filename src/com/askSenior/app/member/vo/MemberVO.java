package com.askSenior.app.member.vo;

public class MemberVO {
	
	private int memberNumber;
	private String memberEmail;
	private String memberPassword;
	private String memberNickname;
	private String memberProfileImage;
	private String memberGreetings;
	private String memberJoinType;
	private String memberName;
	private String memberPhoneNumber;
	
	
	
	public MemberVO() {;}



	public int getMemberNumber() {
		return memberNumber;
	}



	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}



	public String getMemberEmail() {
		return memberEmail;
	}



	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}



	public String getMemberPassword() {
		return memberPassword;
	}



	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}



	public String getMemberNickname() {
		return memberNickname;
	}



	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}



	public String getMemberProfileImage() {
		return memberProfileImage;
	}



	public void setMemberProfileImage(String memberProfileImage) {
		this.memberProfileImage = memberProfileImage;
	}



	public String getMemberGreetings() {
		return memberGreetings;
	}



	public void setMemberGreetings(String memberGreetings) {
		this.memberGreetings = memberGreetings;
	}



	public String getMemberJoinType() {
		return memberJoinType;
	}



	public void setMemberJoinType(String memberJoinType) {
		this.memberJoinType = memberJoinType;
	}



	public String getMemberName() {
		return memberName;
	}



	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}



	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}



	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}



	@Override
	public String toString() {
		return "MemberVO [memberNumber=" + memberNumber + ", memberEmail=" + memberEmail + ", memberPassword="
				+ memberPassword + ", memberNickname=" + memberNickname + ", memberProfileImage=" + memberProfileImage
				+ ", memberGreetings=" + memberGreetings + ", memberJoinType=" + memberJoinType + ", memberName="
				+ memberName + ", memberPhoneNumber=" + memberPhoneNumber + "]";
	}

	

	

	
	
	
	
}
