package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.answer.vo.AnswerVO;
import com.askSenior.app.question.vo.QuestionVO;

public class AnswerDetailController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
			
			int abunho = Integer.parseInt(req.getParameter("abunho"));
			AdminDAO adminDAO = new AdminDAO();
			AnswerVO answerOne = new AnswerVO();
			Result result = new Result();

			
			answerOne = adminDAO.answerOne(abunho);
			req.setAttribute("answerOne", answerOne);
			
			result.setPath("/app/admin/newAnswerDetail.jsp");
			
			return result;
		}

}
