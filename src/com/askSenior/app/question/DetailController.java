package com.askSenior.app.question;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.answer.dao.AnswerDAO;
import com.askSenior.app.answer.vo.AnswerVO;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.QuestionVO;

public class DetailController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		//파라미터는 string으로 넘어온다.
		int qbunho=Integer.parseInt(req.getParameter("qbunho"));
		QuestionDAO questionDAO = new QuestionDAO();
		AnswerDAO answerDAO= new AnswerDAO();
		QuestionVO questionVO= new QuestionVO();
		Result result = new Result();
		int likeQuestionCount;
		int interestingQuestionCount;
		int recommendingQuestionCount;
		int total;
		List<Integer> likeAnswerCountList=new ArrayList<Integer>();
		List<Integer> recommendAnswerCountList=new ArrayList<Integer>();
		List<AnswerVO> answerList= new ArrayList<AnswerVO>();
		
		questionVO=questionDAO.selectDetail(qbunho);
		likeQuestionCount=questionDAO.likeQuestionCount(questionVO.getQuestionNumber());
		interestingQuestionCount=questionDAO.interestingQuestionCount(questionVO.getQuestionNumber());
		recommendingQuestionCount=questionDAO.recommendingQuestionCount(questionVO.getQuestionNumber());
		
		total=answerDAO.selectTotal(questionVO.getQuestionNumber());
		
		answerList=answerDAO.selectAll(questionVO.getQuestionNumber());
		
		for(int i=0;i<answerList.size();i++) {
			likeAnswerCountList.add(answerDAO.recommendCount(answerList.get(i).getAnswerNumber()));
			recommendAnswerCountList.add(answerDAO.likeCount(answerList.get(i).getAnswerNumber()));
		}
		
		
		
		req.setAttribute("questionDetail",questionVO);
		req.setAttribute("answerList", answerList);
		
		req.setAttribute("likeQuestionCount",likeQuestionCount);
		req.setAttribute("interestingQuestionCount",interestingQuestionCount);
		req.setAttribute("recommendingQuestionCount",recommendingQuestionCount);
		req.setAttribute("total",total);
		
		req.setAttribute("likeAnswerCountList",likeAnswerCountList);
		req.setAttribute("recommendAnswerCountList",recommendAnswerCountList);
		
		result.setPath("/app/question/questionInfoDetail.jsp");
		
		result.setRedirect(false);
		return result;
	}

}
