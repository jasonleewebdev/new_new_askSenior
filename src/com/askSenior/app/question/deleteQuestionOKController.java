package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;

public class deleteQuestionOKController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		
		questionDAO.questionDelete(qbunho);
		
		result.setPath("/question/listAll.ques");
		result.setRedirect(false);
		return result;
	}

}
