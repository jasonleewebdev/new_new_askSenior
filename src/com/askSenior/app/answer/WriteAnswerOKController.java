package com.askSenior.app.answer;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.answer.dao.AnswerDAO;
import com.askSenior.app.answer.vo.AnswerVO;

public class WriteAnswerOKController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("utf-8");
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		Result result= new Result();
		AnswerVO answerVO= new AnswerVO();
		AnswerDAO answerDAO= new AnswerDAO();
		String answerContent=req.getParameter("answerContent");
		
		answerVO.setQuestionNumber(qbunho);
		answerVO.setAnswerContent(answerContent);
		
		answerDAO.noMemberNumberAnswerInsert(answerVO);
		
		
		
		result.setPath("/question/detail.ques?qbunho="+qbunho);
		return result;
	}

}
