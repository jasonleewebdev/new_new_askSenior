package com.askSenior.app.answer;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Result;



public class AnswerFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		Result result = null;
		
		if(target.equals("/answer/listAll.answ")) {
			//전체 답변 목록
			
		}else if(target.equals("/answer/listLife.answ")) {
			//생활 목록
			
		}else if(target.equals("/answer/listBusiness.answ")) {
			//업무 및 회사생활 목록
			
		}else if(target.equals("/answer/listRecruitment.answ")) {
			//채용 목록
			
		}else if(target.equals("/answer/listImprovement.answ")) {
			//자기계발 목록
			
		}else if(target.equals("/answer/listInvestment.answ")) {
			//제테크 목록
			
		}else if(target.equals("/answer/listFoundation.answ")) {
			//창업 목록
			
		}else if(target.equals("/answer/listEtc.answ")) {
			//기타 목록
			
		}else if(target.equals("/answer/writerDetail.answ")) {
			//답변 작성자 상세보기
			
		}else if(target.equals("/answer/detail.answ")) {
			//답변을 눌러서 상세보기
			
		}else if(target.equals("/answer/topList.answ")) {
			//베스트 답변
			
		}else if(target.equals("/answer/recommend.answ")) {
			//답변 추천 선택
			
		}else if(target.equals("/answer/recommendCancel.answ")) {
			//답변 추천 해제
			
		}else if(target.equals("/answer/like.ques")) {
			//답변 좋아요
			
		}else if(target.equals("/answer/likeCancel.ques")) {
			//답변 좋아요 해제
			
		}else if(target.equals("/answer/scrap.answ")) {
			//답변 스크랩
			
		}else if(target.equals("/answer/scrapCancel.answ")) {
			//답변 스크랩 해제
		
		
		}else if(target.equals("/answer/writeAnswer.answ")) {
		//답변 쓰는 페이지로 이동
			result=new WriteAnswerController().execute(req, resp);
			
		
		}else if(target.equals("/answer/writeAnswerOK.answ")) {
			//답변 쓴것을 디비에 인서트
			result=new WriteAnswerOKController().execute(req, resp);
		
		}
			
			
		if(result != null) {
		if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
			
		}
		
	}

}





























