package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.lecture.vo.LectureVO;
import com.askSenior.app.notice.vo.NoticeVO;

public class NoticeDetailController implements Execute{

	@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		
		int nbunho = Integer.parseInt(req.getParameter("nbunho"));
		AdminDAO adminDAO = new AdminDAO();
		NoticeVO noticeOne = new NoticeVO();
		Result result = new Result();

		
		noticeOne = adminDAO.noticeOne(nbunho);
		req.setAttribute("noticeOne", noticeOne);
		req.setAttribute("nbunho", nbunho);
		result.setPath("/app/admin/newNotifyDetail.jsp");
		
		return result;
	}

}
