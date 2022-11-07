package com.askSenior.app.lecture;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Result;



public class LectureFrontController extends HttpServlet{
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
		
		if(target.equals("/lecture/listAll.lect")) {
			result = new ListAllController().execute(req, resp);
			
		}else if(target.equals("/lecture/listLife.lect")) {
			//생활 목록
			
		}else if(target.equals("/lecture/listBusiness.lect")) {
			//업무 및 회사생활 목록
			
		}else if(target.equals("/lecture/listRecruitment.lect")) {
			//채용 목록
			
		}else if(target.equals("/lecture/listImprovement.lect")) {
			//자기계발 목록
			
		}else if(target.equals("/lecture/listInvestment.lect")) {
			//제테크 목록
			
		}else if(target.equals("/lecture/listFoundation.lect")) {
			//창업 목록
			
		}else if(target.equals("/lecture/listEtc.lect")) {
			//기타 목록
			
		}else if(target.equals("/lecture/lecturerDetail.lect")) {
			//강연자 상세보기
			
		}else if(target.equals("/lecture/detail.lect")) {
			//강연을 눌러서 상세보기
			
		}else if(target.equals("/lecture/signup.lect")) {
			//강연 신청
			
		}else if(target.equals("/lecture/cancel.lect")) {
			//강연 취소
			
		} else if(target.equals("/lecture/registration.lect")) {
			//강연 등록
			result = new RegistrationController().execute(req, resp);
			
		} else if(target.equals("/lecture/registrationOK.lect")) {
			//강연 등록OK
			result = new RegistrationOKController().execute(req, resp);
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





























