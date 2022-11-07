package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.notice.vo.NoticeVO;

public class NoticeUpdateController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();

		int nbunho = Integer.valueOf(req.getParameter("nbunho"));
		String noticeTitle = req.getParameter("noticeTitle");
		String noticeCategory = req.getParameter("noticeCategory");
		String noticeContent = req.getParameter("noticeContent");
		String noticeUpdatedDate = req.getParameter("noticeUpdatedDate");
		AdminDAO adminDAO = new AdminDAO();
		NoticeVO noticeUpdate = new NoticeVO();
		
		noticeUpdate.setNoticeNumber(nbunho);
		noticeUpdate.setNoticeTitle(noticeTitle);
		noticeUpdate.setNoticeCategory(noticeCategory);
		noticeUpdate.setNoticeContent(noticeContent);
		noticeUpdate.setNoticeUpdatedDate(noticeUpdatedDate);
		adminDAO.noticeUpdate(noticeUpdate);
//		req.setAttribute("noticeUpdate",noticeUpdate);
		result.setPath("/admin/noticeList.admin");
		return result;
	}

}
