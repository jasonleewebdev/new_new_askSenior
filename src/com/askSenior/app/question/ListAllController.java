package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;


public class ListAllController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		String temp = req.getParameter("page");
		
		
		//세션 임의로 생성
		
		  int currentInfoMemberNumber=2; 
		  HttpSession session = req.getSession();
		   session.setAttribute("currentInfoMemberNumber", currentInfoMemberNumber);
		 
		//세션 검사 예시
		/*
		 * if((int)(session.getAttribute("questionMemberNumber")==null){ return; }
		 */
		//String valeu = (String)session.getAttribute("name");
		
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		List<Integer> interestingQuestionCountList= new ArrayList<>();
		List<Integer> likeQuestionCountList= new ArrayList<>();
		List<Integer> recommendingQuestionCountList= new ArrayList<>();
		List<Integer> replyAnswerCountList= new ArrayList<>();
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;
		
		int total = questionDAO.getTotal();
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		int questionNumber;
		int interestingCount;
		int likeCount;
		int recommendingCount;
		int replyAnswerCount;
		for(int i=0;i<questionDAO.selectAll(pageMap).size();i++) {
			questionNumber=questionDAO.selectAll(pageMap).get(i).getQuestionNumber();
			
			interestingCount =questionDAO.interestingQuestionCount(questionNumber);
			likeCount=questionDAO.likeQuestionCount(questionNumber);
			recommendingCount =questionDAO.recommendingQuestionCount(questionNumber);
			replyAnswerCount =questionDAO.recommendingQuestionCount(questionNumber);
			System.out.println(interestingCount);
			System.out.println(recommendingCount);
			
			interestingQuestionCountList.add(interestingCount);
			likeQuestionCountList.add(likeCount);
			recommendingQuestionCountList.add(recommendingCount);
			replyAnswerCountList.add(replyAnswerCount);
			
				
			
			
		}
		
		req.setAttribute("questions", questionDAO.selectAll(pageMap));
		
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("interestingQuestionCountList", interestingQuestionCountList);
		req.setAttribute("likeQuestionCountList", likeQuestionCountList);
		req.setAttribute("recommendingQuestionCountList", recommendingQuestionCountList);
		req.setAttribute("replyAnswerCountList", replyAnswerCountList);
		
		
		result.setPath("/app/question/questionMainPage.jsp");
		
		result.setRedirect(false);
		return result;
	}

}
