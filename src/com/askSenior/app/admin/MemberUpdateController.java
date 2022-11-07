package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.member.vo.MemberVO;
import com.askSenior.app.notice.vo.NoticeVO;

public class MemberUpdateController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {
		Result result = new Result();

		int mbunho = Integer.valueOf(req.getParameter("mbunho"));
		String memberEmail = req.getParameter("memberEmail");
		String memberPassword = req.getParameter("memberPassword");
		String memberNickname = req.getParameter("memberNickname");
		String memberProfileImage = req.getParameter("memberProfileImage");
		String memberGreetings = req.getParameter("memberGreetings");
		String memberJoinType = req.getParameter("memberJoinType");
		String memberName = req.getParameter("memberName");
		String memberPhoneNumber = req.getParameter("memberPhoneNumber");
		AdminDAO adminDAO = new AdminDAO();
		MemberVO memberUpdate = new MemberVO();
		
		memberUpdate.setMemberNumber(mbunho);
		memberUpdate.setMemberEmail(memberEmail);
		memberUpdate.setMemberPassword(memberPassword);
		memberUpdate.setMemberNickname(memberNickname);
		memberUpdate.setMemberProfileImage(memberProfileImage);
		memberUpdate.setMemberGreetings(memberGreetings);
		memberUpdate.setMemberJoinType(memberJoinType);
		memberUpdate.setMemberName(memberName);
		memberUpdate.setMemberPhoneNumber(memberPhoneNumber);
		adminDAO.memberUpdate(memberUpdate);
//		req.setAttribute("noticeUpdate",noticeUpdate);
		result.setPath("/admin/memberList.admin");
		return result;
	}

}
