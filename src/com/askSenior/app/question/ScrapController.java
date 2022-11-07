package com.askSenior.app.question;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.question.dao.QuestionDAO;
import com.askSenior.app.question.vo.LikeQuestionVO;

public class ScrapController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		QuestionDAO questionDAO = new QuestionDAO();
		Result result = new Result();
		LikeQuestionVO likeQuestionVO= new LikeQuestionVO();
		
		int questionNumber=Integer.valueOf(req.getParameter("questionNumber"));
		int count=Integer.valueOf(req.getParameter("count"));
		int memberNumber=Integer.valueOf(req.getParameter("memberNumber"));
		int resultCount;
		
		likeQuestionVO.setMemberNumber(memberNumber);
		likeQuestionVO.setQuestionNumber(questionNumber);
		
		if(count==1) {
			questionDAO.plusInterestingQuestionCount(likeQuestionVO);
		}
		else if(count==-1) {
			questionDAO.minusInterestingQuestionCount(likeQuestionVO);
		}
		
		resultCount=questionDAO.interestingQuestionCount(questionNumber);
		
		resp.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		//JSONArray plusSearchQuestions = new JSONArray();
		JSONObject jsoncount= new JSONObject(resultCount);
		
		out.print(jsoncount.toString());
		System.out.println(jsoncount.toString());
		out.close();
		return null;
	}

}
