package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class writeQuestionOKController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		QuestionDAO questionDAO= new QuestionDAO();
		QuestionVO questionVO= new QuestionVO();
		
		String categoryChoose=req.getParameter("categoryChoose");
		String questionTitle=req.getParameter("questionTitle");
		String questionContent=req.getParameter("qusetionContent");
		
		questionVO.setQuestionCategory(categoryChoose);
		questionVO.setQuestionTitle(questionTitle);
		questionVO.setQuestionContent(questionContent);
		
		questionDAO.noMemberNumberQuestionInsert(questionVO);
		
		result.setPath("/question/listAll.ques");
		
		result.setRedirect(false);
		return result;
	}

}
