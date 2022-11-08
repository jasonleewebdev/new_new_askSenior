package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class updateQuestionOKController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		QuestionDAO questionDAO = new QuestionDAO();
		QuestionVO questionVO= new QuestionVO();
		Result result = new Result();
		
		int questionNumber=qbunho;
		 HttpSession session = req.getSession();
		int memberNumber=(int)session.getAttribute("currentInfoMemberNumber");
		String questionCategory=req.getParameter("categoryChoose");
		String questionTitle=req.getParameter("questionTitle");
		String questionContent=req.getParameter("qusetionContent");
		
		questionVO.setQuestionNumber(questionNumber);
		questionVO.setMemberNumber(memberNumber);
		questionVO.setQuestionCategory(questionCategory);
		questionVO.setQuestionTitle(questionTitle);
		questionVO.setQuestionContent(questionContent);
		
		questionDAO.questionUpdateInsert(questionVO);
		System.out.println("updateQuestiondao 지남");
		req.setAttribute("qbunho",qbunho);
		result.setPath("/question/detail.ques");
		//result.setPath("/question/listAll.ques");
		result.setRedirect(false);
		return result;
	}

}
