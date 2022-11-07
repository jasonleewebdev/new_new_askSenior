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
import com.askSenior.app.question.vo.CategoryPagenationDTO;
import com.askSenior.app.question.vo.NewSearchTitlePagenationDTO;
import com.askSenior.app.question.vo.QuestionVO;

public class ListFoundationController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		List<QuestionVO> questions=new ArrayList<>();
		
		
		String temp = req.getParameter("page");
		//String temp2= req.getParameter("plusCount");
		//String temp3= req.getParameter("tenMoreButtonClickCount");
		//HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		//HashMap<String, String> searchTitleStore = new HashMap<String, String>();
		//SearchTitlePagenationDTO searchTitlePagenationDTO= new SearchTitlePagenationDTO();
		CategoryPagenationDTO categoryPagenationDTO= new CategoryPagenationDTO();
		List<Integer> interestingQuestionCountList= new ArrayList<>();
		List<Integer> likeQuestionCountList= new ArrayList<>();
		List<Integer> recommendingQuestionCountList= new ArrayList<>();
		List<Integer> replyAnswerCountList= new ArrayList<>();
		
		
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//int plusCount = temp2 == null ? 0 : Integer.parseInt(temp2);
		//int tenMoreButtonClick = temp3 == null ? 0 : Integer.parseInt(temp3);
		
		String searchTitle=req.getParameter("formSearchInput");
		HttpSession session = req.getSession();
		if(searchTitle==null) {
			searchTitle=(String) session.getAttribute("formSearchInput");
		}
		else {
			session.setAttribute("formSearchInput", searchTitle);
		}
		
		

		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
		//rowCount+=10*tenMoreButtonClick;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 10;
		int startRow = (page - 1) * rowCount;
		
		//int total = questionDAO.getTotal();
		//int startRow=10*tenMoreButtonClick;
		
		
		/*
		 * pageMap.put("rowCount", rowCount); pageMap.put("startRow", startRow);
		 * searchTitleStore.put("searchTitle", searchTitle);
		 * 
		 * 
		 * searchTitlePagenationDTO.setPageMap(pageMap);
		 * searchTitlePagenationDTO.setSearchTitleStore(searchTitleStore);
		 */
		categoryPagenationDTO.setStartRow(startRow);
		categoryPagenationDTO.setRowCount(rowCount);
		categoryPagenationDTO.setSearchCategory("창업");
		questions=questionDAO.selectCategory(categoryPagenationDTO);
		
		int total=questionDAO.selectCategoryTotal(categoryPagenationDTO);
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;
		
		int questionNumber;
		int interestingCount;
		int likeCount;
		int recommendingCount;
		int replyAnswerCount;
		String namageTitle;
		for(int i=0;i<questions.size();i++) {
			questionNumber=questions.get(i).getQuestionNumber();
			
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
		
		req.setAttribute("questions", questions);
		req.setAttribute("searchTitle", searchTitle);
		
		
		result.setPath("/app/question/questionFoundation.jsp");
		
		result.setRedirect(false);
		return result;
	}

}
