package com.askSenior.app.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.member.dao.MemberDAO;
import com.askSenior.app.member.vo.MemberVO;

public class JoinOkController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		MemberDAO memberDAO= new MemberDAO();
		MemberVO memberVO = new MemberVO();
		Result result = new Result();
		
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		memberVO.setMemberPassword(req.getParameter("memberPw"));
		
		memberDAO.join(null);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/app/member/login.jsp");
		
		return result;
	}

}
