package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class updateQuestionController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionVO questionVO= new QuestionVO();
		Result result = new Result();
		
		questionVO=questionDAO.selectDetail(qbunho);
		
		req.setAttribute("questionDetail",questionVO);
		
		
		
		result.setPath("/app/question/questionUpdateWrite.jsp");
		
		result.setRedirect(false);
		return result;
	}

}
