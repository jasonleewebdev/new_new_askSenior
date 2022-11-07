package com.askSenior.app.main.vo;

public class RecommendedAnswerDTO {
	private String questionTitle;
	private String answerContent;
	
	public String getQuestionTitle() {
		return questionTitle;
	}
	
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	
	public String getAnswerContent() {
		return answerContent;
	}
	
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	
	@Override
	public String toString() {
		return "RecommendedAnswerDTO [questionTitle=" + questionTitle + ", answerContent=" + answerContent + "]";
	}
}
