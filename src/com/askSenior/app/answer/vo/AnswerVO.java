package com.askSenior.app.answer.vo;

import java.util.Date;

public class AnswerVO {
   private int answerNumber;
   private int questionNumber;
   private int memberNumber;
   private String answerContent;
   private Date answerUpdatedDate;
   
   public AnswerVO() {
      // TODO Auto-generated constructor stub
   }

   public int getAnswerNumber() {
      return answerNumber;
   }

   public void setAnswerNumber(int answerNumber) {
      this.answerNumber = answerNumber;
   }

   public int getQuestionNumber() {
      return questionNumber;
   }

   public void setQuestionNumber(int questionNumber) {
      this.questionNumber = questionNumber;
   }

   public int getMemberNumber() {
      return memberNumber;
   }

   public void setMemberNumber(int memberNumber) {
      this.memberNumber = memberNumber;
   }

   public String getAnswerContent() {
      return answerContent;
   }

   public void setAnswerContent(String answerContent) {
      this.answerContent = answerContent;
   }

   public Date getAnswerUpdatedDate() {
      return answerUpdatedDate;
   }

   public void setAnswerUpdatedDate(Date answerUpdatedDate) {
      this.answerUpdatedDate = answerUpdatedDate;
   }

   @Override
   public String toString() {
      return "AnswerVO [answerNumber=" + answerNumber + ", questionNumber=" + questionNumber + ", memberNumber="
            + memberNumber + ", answerContent=" + answerContent + ", answerUpdatedDate=" + answerUpdatedDate + "]";
   }

   
   
   
}