package com.askSenior.app.lecture;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.askSenior.app.Execute;
import com.askSenior.app.Result;
import com.askSenior.app.lecture.dao.LectureDAO;
import com.askSenior.app.lecture.vo.LectureVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class RegistrationOKController implements Execute {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServerException, NullPointerException{
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		LectureDAO lectureDAO = new LectureDAO();
		LectureVO lectureVO = new LectureVO();
//		InputStream in = null;
//		byte[] datas = null;
		int fileSize = 1024 * 1024 * 5;
		
		String uploadPathMain = req.getSession().getServletContext().getRealPath("/") + "upload/main";
		String uploadPathIntroduction = req.getSession().getServletContext().getRealPath("/") + "upload/introduction";
		String uploadPathLecturer = req.getSession().getServletContext().getRealPath("/") + "upload/lecturer";
		MultipartRequest multipartRequestMain = new MultipartRequest(req, uploadPathMain, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		MultipartRequest multipartRequestIntroduction = new MultipartRequest(req, uploadPathIntroduction, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		MultipartRequest multipartRequestLecturer = new MultipartRequest(req, uploadPathLecturer, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String lectureMainImage = multipartRequestMain.getParameter("lectureMainImage");
		String lectureIntroductionImage = multipartRequestIntroduction.getParameter("lectureIntroductionImage");
		String lectureLecturerImage = multipartRequestLecturer.getParameter("lectureLecturerImage");
		String lectureTitle = multipartRequestMain.getParameter("lectureTitle");
		String lectureCategory = multipartRequestMain.getParameter("lectureCategory");
		String lectureLecturerIntroduction = multipartRequestMain.getParameter("lectureLecturerIntroduction");
		String lectureContent = multipartRequestMain.getParameter("lectureContent");
		String lectureDate = multipartRequestMain.getParameter("lectureDate");
		String lectureSignupStartDate = multipartRequestMain.getParameter("lectureSignupStartDate");
		String lectureSignupEndDate = multipartRequestMain.getParameter("lectureSignupEndDate");
		String lectureLocation = multipartRequestMain.getParameter("lectureLocation");
		int lectureLimitNumber = (Integer.parseInt(multipartRequestMain.getParameter("lectureLimitNumber")));
		
		
//		File fileMain = new File(uploadPathMain, lectureMainImage);
//		File fileIntrodunction = new File(uploadPathIntrodunction, lectureIntroductionImage);
//		File fileLecturer = new File(uploadPathLecturer, lectureIntroductionImage);
//		datas = new byte[(int)fileMain.length()];
//		in = new FileInputStream(fileMain);
//		datas = new byte[(int)fileIntrodunction.length()];
//		in = new FileInputStream(fileIntrodunction);
//		datas = new byte[(int)fileLecturer.length()];
//		in = new FileInputStream(fileLecturer);
		
//		resp.setHeader("Content-Length", fileMain.length() + "");
//		resp.setHeader("Content-Disposition", "attachment;filename=\"" + new String((""+lectureMainImage).getBytes(), "ISO-8859-1") + "\"");
//		
//		resp.setHeader("Content-Length", fileIntrodunction.length() + "");
//		resp.setHeader("Content-Disposition", "attachment;filename=\"" + new String((""+lectureIntroductionImage).getBytes(), "ISO-8859-1") + "\"");
//		
//		resp.setHeader("Content-Length", fileLecturer.length() + "");
//		resp.setHeader("Content-Disposition", "attachment;filename=\"" + new String((""+lectureLecturerImage).getBytes(), "ISO-8859-1") + "\"");
		
		lectureVO.setLectureTitle(lectureTitle);
		lectureVO.setLectureCategory(lectureCategory);
		lectureVO.setLectureMainImage(lectureMainImage);
		lectureVO.setLectureIntroductionImage(lectureIntroductionImage);
		lectureVO.setLectureLecturerImage(lectureLecturerImage);
		lectureVO.setLectureLecturerIntroduction(lectureLecturerIntroduction);
		lectureVO.setLectureContent(lectureContent);
		lectureVO.setLectureDate(lectureDate);
		lectureVO.setLectureSignupStartDate(lectureSignupStartDate);
		lectureVO.setLectureSignupEndDate(lectureSignupEndDate);
		lectureVO.setLectureLocation(lectureLocation);
		lectureVO.setLectureLimitNumber(lectureLimitNumber);
		
		lectureDAO.insert(lectureVO);
		
		result.setPath(req.getContextPath()+"/lecture/listAll.lect");
//		result.setPath(req.getSession().getServletContext().getRealPath("/")+"lecture/listAll.lect");
		
		return result;
	}

}
