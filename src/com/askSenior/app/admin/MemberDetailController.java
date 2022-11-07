package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.member.vo.MemberVO;

public class MemberDetailController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {

		int mbunho = Integer.parseInt(req.getParameter("mbunho"));
		AdminDAO adminDAO = new AdminDAO();
		MemberVO memberOne = new MemberVO();
		Result result = new Result();

		
		memberOne = adminDAO.selectOne(mbunho);
		req.setAttribute("memberOne", memberOne);
		
		result.setPath("/app/admin/newMemberDetail.jsp");
		
		return result;
	}
}
