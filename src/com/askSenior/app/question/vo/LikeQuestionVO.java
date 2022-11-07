package com.askSenior.app.question.vo;

public class LikeQuestionVO {
   private int questionNumber;
   private int memberNumber;
   
   public LikeQuestionVO() {
      // TODO Auto-generated constructor stub
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

   @Override
   public String toString() {
      return "LikeQuestionVO [questionNumber=" + questionNumber + ", memberNumber=" + memberNumber + "]";
   }

   
   
   
}