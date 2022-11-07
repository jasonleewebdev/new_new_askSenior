package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.answer.vo.AnswerVO;
import com.askSenior.app.lecture.vo.LectureVO;

public class LectureDetailController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		int lbunho = Integer.parseInt(req.getParameter("lbunho"));
		AdminDAO adminDAO = new AdminDAO();
		LectureVO lectureOne = new LectureVO();
		Result result = new Result();

		
		lectureOne = adminDAO.lectureOne(lbunho);
		req.setAttribute("lectureOne", lectureOne);
		
		result.setPath("/app/admin/newSpeechDetail.jsp");
		
		return result;
	}
}
