package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;

public class AnswerRemoveController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int abunho = Integer.valueOf(req.getParameter("abunho"));
		
		AdminDAO adminDAO = new AdminDAO();
		
		
		
		adminDAO.deleteAnswer(abunho);
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/admin/answerList.admin");
		return result;
	}

}
