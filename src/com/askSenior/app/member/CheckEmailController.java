package com.askSenior.app.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.member.dao.MemberDAO;

public class CheckEmailController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		String memberEmail = req.getParameter("memberEmail");
		MemberDAO memberDao = new MemberDAO();
		memberDao.checkId(memberEmail);
		resp.getWriter().print(memberDao.checkId(memberEmail));
		return null;
	}

}
