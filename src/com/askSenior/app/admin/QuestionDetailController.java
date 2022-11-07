package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.member.vo.MemberVO;
import com.askSenior.app.question.vo.QuestionVO;

public class QuestionDetailController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		int qbunho = Integer.parseInt(req.getParameter("qbunho"));
		AdminDAO adminDAO = new AdminDAO();
		QuestionVO questionOne = new QuestionVO();
		Result result = new Result();

		
		questionOne = adminDAO.questionOne(qbunho);
		req.setAttribute("questionOne", questionOne);
		
		result.setPath("/app/admin/newQuestionDetail.jsp");
		
		return result;
	}

}
