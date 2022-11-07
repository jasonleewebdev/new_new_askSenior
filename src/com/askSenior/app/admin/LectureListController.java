package com.askSenior.app.admin;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.admin.dao.AdminDAO;
import com.askSenior.app.lecture.vo.LectureVO;
import com.askSenior.app.member.vo.MemberVO;

public class LectureListController implements Execute{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException {

		AdminDAO adminDAO = new AdminDAO();
		List<LectureVO> lectureList = new ArrayList<LectureVO>();
		Result result = new Result();
		
		String temp = req.getParameter("page");
		HashMap<String, Integer> pageMap = new HashMap<String, Integer>();
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 8;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 1;
		int startRow = (page - 1) * rowCount;
		
		int total = adminDAO.LectureTotal();
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)pageCount);
		
		boolean prev = startPage > 1; 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean next = endPage != realEndPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		req.setAttribute("lectureList", adminDAO.lectureAll(pageMap));
		req.setAttribute("total", total);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		
		
//		lectureList = adminDAO.lectureAll();
//		req.setAttribute("lectureList", lectureList);
		
		result.setPath("/app/admin/newSpeechList.jsp");
		
		return result;
	}

}
