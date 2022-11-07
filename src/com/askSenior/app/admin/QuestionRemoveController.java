package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;

public class QuestionRemoveController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();
		int qbunho = Integer.valueOf(req.getParameter("qbunho"));
		System.out.println(qbunho);
		AdminDAO adminDAO = new AdminDAO();
		

		
		adminDAO.deleteQuestion(qbunho);
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/admin/questionList.admin");
		return result;
	}

}
