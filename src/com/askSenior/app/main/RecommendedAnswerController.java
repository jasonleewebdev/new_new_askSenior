package com.askSenior.app.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.main.dao.MainDAO;

public class RecommendedAnswerController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		resp.setContentType("application/json;charset=utf-8");
		MainDAO mainDAO = new MainDAO();
		String questionCategory = req.getParameter("questionCategory").trim();
		System.out.println(questionCategory);
		
		JSONArray answers = new JSONArray();
		PrintWriter out = resp.getWriter();
				
		mainDAO.selectAnswer(questionCategory).stream().map(answer -> new JSONObject(answer)).forEach(obj -> answers.put(obj));
		System.out.println(answers.toString());
		out.print(answers.toString());
		out.close();
		
		return null;
	}

}
