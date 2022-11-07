package com.askSenior.app.lecture;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.member.dao.MemberDAO;

public class RegistrationController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		req.setCharacterEncoding("UTF-8");
//		int memberNumber = 0;
		Result result = new Result();
//		MemberDAO memberDAO = new MemberDAO();
//		try {
//			memberNumber = (Integer)req.getSession().getAttribute("memberNumber");
//			req.setAttribute("memberId", memberDAO.getMemberId(memberNumber));
//			result.setPath("/app/lecture/lectureRegistration.jsp");
//			
//		} catch (Exception e) {
//			result.setPath("/member/login.me");
//		}
		result.setPath("/app/lecture/lectureRegistration.jsp");
		return result;
	}

}
