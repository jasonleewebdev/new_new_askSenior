package com.askSenior.app.main;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.main.dao.MainDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class MainController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		MainDAO mainDAO = new MainDAO();
		String questionCategory = "생활";
		
		req.setAttribute("questions", mainDAO.selectQuestion());
		req.setAttribute("answers", mainDAO.selectAnswer(questionCategory));
		
		result.setPath("/app/main/main.jsp");
		
		return result;
	}

}
