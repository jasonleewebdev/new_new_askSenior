package com.askSenior.app.question;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Result;





public class QuestionFrontController extends HttpServlet{
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
		
		if(target.equals("/question/listAll.ques")) {
			//전체 질문 목록
			//여기다가 멤버번호 세션 임의로 만듬
			result=new ListAllController().execute(req, resp);
		}
		else if(target.equals("/question/writeQuestion.ques")) {
			//나도 질문하기 페이지로 이동
			result=new Result();
			result.setPath("/app/question/questionWrite.jsp");
			result.setRedirect(false);
		}
		else if(target.equals("/question/writeQuestionOK.ques")) {
			//나도 질문하기 작성후 디비에 넘기기
			result=new writeQuestionOKController().execute(req, resp);
		}
		else if(target.equals("/question/updateQuestion.ques")) {
			//나도 질문하기 업데이트 페이지로 이동
			result=new updateQuestionController().execute(req, resp);
		}
		else if(target.equals("/question/updateQuestionOK.ques")) {
			//나도 질문하기 업데이트후 디비에 넘기기
			result=new updateQuestionOKController().execute(req, resp);
		}
		else if(target.equals("/question/listLife.ques")) {
			//생활 목록 현재 없음
			//result=new ListLifeController().execute(req, resp);
			
		}else if(target.equals("/question/listBusiness.ques")) {
			//업무 및 회사생활 목록
			result=new ListBusinessController().execute(req, resp);
		}else if(target.equals("/question/listRecruitment.ques")) {
			//채용 목록
			result=new ListRecruitmentController().execute(req, resp);
		}else if(target.equals("/question/listImprovement.ques")) {
			//자기계발 목록
			result=new ListImprovementController().execute(req, resp);
		}else if(target.equals("/question/listInvestment.ques")) {
			//제테크 목록
			result= new ListInvestmentController().execute(req, resp);
		}else if(target.equals("/question/listFoundation.ques")) {
			//창업 목록
			result=new ListFoundationController().execute(req, resp);
			
		}else if(target.equals("/question/listEtc.ques")) {
			//기타 목록
			result= new ListEtcController().execute(req, resp);
		}else if(target.equals("/question/writerDetail.ques")) {
			//질문 작성자 상세보기
			
		}else if(target.equals("/question/detail.ques")) {
			//질문을 눌러서 상세보기
			System.out.println("/question/detail.ques에 들어감");
			result=new DetailController().execute(req, resp);
			System.out.println("result에 들어감");
			
		}else if(target.equals("/question/searchTitle.ques")) {
			//헤더에서 질문검색을 하여 맞는 질문타이틀 결과 나오기
			//System.out.println("/question/detail.ques에 들어감");
			result=new SearchTitleController().execute(req, resp);
			System.out.println("result에 들어감");
			
		
		}else if(target.equals("/question/searchTitlePlus.ques")) {
			//헤더에서 질문검색을 하여 맞는 질문타이틀 결과 나오기 + 10개추가버튼 누르면
			//System.out.println("/question/detail.ques에 들어감");
			new SearchTitlePlusController().execute(req, resp);
			System.out.println("result에 들어감");
			
		}
		else if(target.equals("/question/topList.ques")) {
			//화제의 질문
			
		}else if(target.equals("/question/recommend.ques")) {
			//질문 추천 선택
			
		}else if(target.equals("/question/recommendCancel.ques")) {
			//질문 추천 해제
			
		}else if(target.equals("/question/like.ques")) {
			//질문 좋아요 선택
			
		}else if(target.equals("/question/likeCancel.ques")) {
			//질문 좋아요 해제
			
		}else if(target.equals("/question/scrap.ques")) {
			//질문 스크랩 이게 관심있는 질문등록
			new ScrapController().execute(req, resp);
		}else if(target.equals("/question/scrapCancel.ques")) {
			//질문 스크랩 해제 이게 관심있는 질문등록 해제 scrap.ques로 통합
		
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





























