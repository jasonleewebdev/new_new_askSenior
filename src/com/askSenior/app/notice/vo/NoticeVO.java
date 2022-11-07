package com.askSenior.app.notice.vo;

import java.util.Date;

public class NoticeVO {
	private int noticeNumber;
	private String noticeTitle;
	private String noticeContent;
	private String noticeUpdatedDate;
	private String noticeCategory;
	
	public NoticeVO() {
		// TODO Auto-generated constructor stub
	}

	public int getNoticeNumber() {
		return noticeNumber;
	}

	public void setNoticeNumber(int noticeNumber) {
		this.noticeNumber = noticeNumber;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeUpdatedDate() {
		return noticeUpdatedDate;
	}

	public void setNoticeUpdatedDate(String noticeUpdatedDate) {
		this.noticeUpdatedDate = noticeUpdatedDate;
	}

	public String getNoticeCategory() {
		return noticeCategory;
	}

	public void setNoticeCategory(String noticeCategory) {
		this.noticeCategory = noticeCategory;
	}

	@Override
	public String toString() {
		return "NoticeVO [noticeNumber=" + noticeNumber + ", noticeTitle=" + noticeTitle + ", noticeContent="
				+ noticeContent + ", noticeUpdatedDate=" + noticeUpdatedDate + ", noticeCategory=" + noticeCategory
				+ "]";
	}
	
	
}
