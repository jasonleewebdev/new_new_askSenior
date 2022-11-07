package com.askSenior.app.answer.vo;

public class RecommendingAnswerVO {
   private int answerNumber;
   private int memberNumber;
   
   public RecommendingAnswerVO() {
      // TODO Auto-generated constructor stub
   }

   public int getAnswerNumber() {
      return answerNumber;
   }

   public void setAnswerNumber(int answerNumber) {
      this.answerNumber = answerNumber;
   }

   public int getMemberNumber() {
      return memberNumber;
   }

   public void setMemberNumber(int memberNumber) {
      this.memberNumber = memberNumber;
   }

   @Override
   public String toString() {
      return "RecommendingAnswerVO [answerNumber=" + answerNumber + ", memberNumber=" + memberNumber + "]";
   }

   
   
   
}