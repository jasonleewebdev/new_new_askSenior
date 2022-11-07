package com.askSenior.app.lecture.vo;

public class LectureVO {
	private int lectureNumber;
	private int memberNumber;
	private String lectureCategory;
	private String lectureTitle;
	private String lectureMainImage;
	private String lectureIntroductionImage;
	private String lectureLecturerImage;
	private String lectureLecturerIntroduction;
	private String lectureContent;
	private String lectureDate;
	private String lectureSignupStartDate;
	private String lectureSignupEndDate;
	private String lectureLocation;
	private int lectureLimitNumber;
	private int lectureApplyNumber;
	
	public LectureVO() {;}
	
	public int getLectureNumber() {
		return lectureNumber;
	}
	public void setLectureNumber(int lectureNumber) {
		this.lectureNumber = lectureNumber;
	}
	public int getMemberNumber() {
		return memberNumber;
	}
	public void setMemberNumber(int memberNumber) {
		this.memberNumber = memberNumber;
	}
	public String getLectureCategory() {
		return lectureCategory;
	}
	public void setLectureCategory(String lectureCategory) {
		this.lectureCategory = lectureCategory;
	}
	public String getLectureTitle() {
		return lectureTitle;
	}
	public void setLectureTitle(String lectureTitle) {
		this.lectureTitle = lectureTitle;
	}
	public String getLectureMainImage() {
		return lectureMainImage;
	}
	public void setLectureMainImage(String lectureMainImage) {
		this.lectureMainImage = lectureMainImage;
	}
	public String getLectureIntroductionImage() {
		return lectureIntroductionImage;
	}
	public void setLectureIntroductionImage(String lectureIntroductionImage) {
		this.lectureIntroductionImage = lectureIntroductionImage;
	}
	public String getLectureLecturerImage() {
		return lectureLecturerImage;
	}
	public void setLectureLecturerImage(String lectureLecturerImage) {
		this.lectureLecturerImage = lectureLecturerImage;
	}
	public String getLectureLecturerIntroduction() {
		return lectureLecturerIntroduction;
	}
	public void setLectureLecturerIntroduction(String lectureLecturerIntroduction) {
		this.lectureLecturerIntroduction = lectureLecturerIntroduction;
	}
	public String getLectureContent() {
		return lectureContent;
	}
	public void setLectureContent(String lectureContent) {
		this.lectureContent = lectureContent;
	}
	public String getLectureDate() {
		return lectureDate;
	}
	public void setLectureDate(String lectureDate) {
		this.lectureDate = lectureDate;
	}
	public String getLectureSignupStartDate() {
		return lectureSignupStartDate;
	}
	public void setLectureSignupStartDate(String lectureSignupStartDate) {
		this.lectureSignupStartDate = lectureSignupStartDate;
	}
	public String getLectureSignupEndDate() {
		return lectureSignupEndDate;
	}
	public void setLectureSignupEndDate(String lectureSignupEndDate) {
		this.lectureSignupEndDate = lectureSignupEndDate;
	}
	public String getLectureLocation() {
		return lectureLocation;
	}
	public void setLectureLocation(String lectureLocation) {
		this.lectureLocation = lectureLocation;
	}
	public int getLectureLimitNumber() {
		return lectureLimitNumber;
	}
	public void setLectureLimitNumber(int lectureLimitNumber) {
		this.lectureLimitNumber = lectureLimitNumber;
	}
	public int getLectureApplyNumber() {
		return lectureApplyNumber;
	}
	public void setLectureApplyNumber(int lectureApplyNumber) {
		this.lectureApplyNumber = lectureApplyNumber;
	}
	@Override
	public String toString() {
		return "LectureVO [lectureNumber=" + lectureNumber + ", memberNumber=" + memberNumber + ", lectureCategory="
				+ lectureCategory + ", lectureTitle=" + lectureTitle + ", lectureMainImage=" + lectureMainImage
				+ ", lectureIntroductionImage=" + lectureIntroductionImage + ", lectureLecturerImage="
				+ lectureLecturerImage + ", lectureLecturerIntroduction=" + lectureLecturerIntroduction
				+ ", lectureContent=" + lectureContent + ", lectureDate=" + lectureDate + ", lectureSignupStartDate="
				+ lectureSignupStartDate + ", lectureSignupEndDate=" + lectureSignupEndDate + ", lectureLocation="
				+ lectureLocation + ", lectureLimitNumber=" + lectureLimitNumber + ", lectureApplyNumber="
				+ lectureApplyNumber + "]";
	}
	
	


	
}
