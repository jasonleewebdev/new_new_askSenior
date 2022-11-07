package com.askSenior.app.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.member.dao.MemberDAO;

public class LoginOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		String memberEmail = req.getParameter("memberEmail");
		String memberPw = req.getParameter("memberPw");
		int memberNumber = 0;
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		
		try {
			memberDAO.login(memberEmail, memberPw);			
		} catch (Exception e) {
			e.printStackTrace();
			result.setPath("/member/login.me?login=false");
		}
		
		return null;
	}

}
