package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class updateQuestionOKController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionVO questionVO= new QuestionVO();
		Result result = new Result();
		
		int memberNumber=qbunho;
		String questionCategory=req.getParameter("categoryChoose");
		String questionTitle=req.getParameter("questionTitle");
		String questionContent=req.getParameter("qusetionContent");
		
		questionVO.setMemberNumber(memberNumber);
		questionVO.setQuestionCategory(questionCategory);
		questionVO.setQuestionTitle(questionTitle);
		questionVO.setQuestionContent(questionContent);
		
		questionDAO.questionUpdateInsert(questionVO);
		
		req.setAttribute("qbunho",qbunho);
		result.setPath(req.getContextPath()+"/question/detail.ques");
		result.setRedirect(false);
		return result;
	}

}
