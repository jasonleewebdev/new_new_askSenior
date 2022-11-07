package com.askSenior.app.notice;




import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class NoticeFrontController extends HttpServlet{
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
		//Result result = null;
		
		if(target.equals("/notice/listAll.noti")) {
			//공지 사항 목록
			
		}else if(target.equals("/notice/detail.noti")) {
			//공지 사항 상세보기
			
		}
			
			
//		if(result != null) {
//			if(result.isRedirect()) {
//				resp.sendRedirect(result.getPath());
//			}else {
//				req.getRequestDispatcher(result.getPath()).forward(req, resp);
//			}
//			
//		}
		
	}

}





























