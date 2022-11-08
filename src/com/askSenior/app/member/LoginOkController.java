package com.askSenior.app.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.management.RuntimeErrorException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		System.out.println(memberEmail);
		System.out.println(memberPw);
		 
		memberNumber = memberDAO.login(memberEmail, memberPw);		
		if(memberNumber!=0) {
//			result.setPath(""); //���������� ���
			int currentInfoMemberNumber=2; HttpSession session = req.getSession();
			 session.setAttribute("currentInfoMemberNumber", currentInfoMemberNumber);
			//result.setPath("/question/listAll.ques"); 
			 result.setPath("/main/main.ma");
		}
		else{
			result.setPath("/member/login.me?login=false");
		}
		return result;
	}

}
