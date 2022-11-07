package com.askSenior.app.lecture;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.lecture.dao.LectureDAO;

public class ListAllController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
//		LectureDAO lectureDAO = new LectureDAO();
		Result result = new Result();
		
		result.setPath("/app/lecture/lectureMain.jsp");
		return result;
	}

}
