package com.askSenior.app.answer;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class WriteAnswerController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		Result result= new Result();
		QuestionDAO questionDAO= new QuestionDAO();
		int likeCount;
		int recommendCount;
		int interestingCount;
		
		QuestionVO questionVO=  questionDAO.selectDetail(qbunho);
		
		interestingCount=questionDAO.interestingQuestionCount(questionVO.getQuestionNumber());
		likeCount=questionDAO.likeQuestionCount(questionVO.getQuestionNumber());
		recommendCount=questionDAO.recommendingQuestionCount(questionVO.getQuestionNumber());
		
		req.setAttribute("qbunho", qbunho);
		req.setAttribute("questionVO", questionVO);
		req.setAttribute("likeCount", likeCount);
		req.setAttribute("interestingCount",interestingCount);
		req.setAttribute("recommendCount", recommendCount);
		
		System.out.println("큐번호 넘겨온거"+qbunho);
		result.setPath("/app/answer/answerWrite.jsp");
		//result.setPath("/app/answer/answerWrite.jsp?qbunho="+qbunho);
		return result;
	}

}
