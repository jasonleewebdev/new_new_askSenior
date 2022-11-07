package com.askSenior.app.lecture;

import java.io.IOException;
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
//		OutputStream out = null;
//		byte[] datas = null;
		int fileSize = 1024 * 1024 * 5;

//		List<String> imageList = new ArrayList<String>();
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload";
//		String uploadPathMain = req.getSession().getServletContext().getRealPath("/") + "upload/main/";
//		String uploadPathIntroduction = req.getSession().getServletContext().getRealPath("/") + "upload/introduction/";
//		String uploadPathLecturer = req.getSession().getServletContext().getRealPath("/") + "upload/lecturer/";
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
//		MultipartRequest multipartRequestMain = new MultipartRequest(req, uploadPathMain, fileSize, "UTF-8", new DefaultFileRenamePolicy());
//		MultipartRequest multipartRequestIntroduction = new MultipartRequest(req, uploadPathIntroduction, fileSize, "UTF-8", new DefaultFileRenamePolicy());
//		MultipartRequest multipartRequestLecturer = new MultipartRequest(req, uploadPathLecturer, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String lectureMainImage = multipartRequest.getOriginalFileName("lectureMainImage");
//		String lectureIntroductionImage = multipartRequest.getOriginalFileName("lectureIntroductionImage");
//		String lectureLecturerImage = multipartRequest.getOriginalFileName("lectureLecturerImage");
		String lectureTitle = multipartRequest.getParameter("lectureTitle");
		String lectureCategory = multipartRequest.getParameter("lectureCategory");
		String lectureLecturerIntroduction = multipartRequest.getParameter("lectureLecturerIntroduction");
		String lectureContent = multipartRequest.getParameter("lectureContent");
		String lectureDate = multipartRequest.getParameter("lectureDate");
		String lectureSignupStartDate = multipartRequest.getParameter("lectureSignupStartDate");
		String lectureSignupEndDate = multipartRequest.getParameter("lectureSignupEndDate");
		String lectureLocation = multipartRequest.getParameter("lectureLocation");
		int lectureLimitNumber = (Integer.parseInt(multipartRequest.getParameter("lectureLimitNumber")));
		
		
//		Enumeration<String> fileNames = multipartRequestMain.getFileNames();
//		int i = 0;
//		while(fileNames.hasMoreElements()) {
//			String fileName = fileNames.nextElement();
//			String fileSystemName = multipartRequestMain.getFilesystemName(fileName);
//			if(fileSystemName == null) {continue;}
//			imageList.add(i, fileSystemName);
//			i++;
//		}
		
//		File fileMain = new File(uploadPathMain, lectureMainImage);
//		File fileIntrodunction = new File(uploadPathIntroduction, lectureIntroductionImage);
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
//		lectureVO.setLectureMainImage(imageList.get(0));
//		lectureVO.setLectureIntroductionImage(lectureIntroductionImage);
//		lectureVO.setLectureIntroductionImage(imageList.get(1));
//		lectureVO.setLectureLecturerImage(lectureLecturerImage);
//		lectureVO.setLectureLecturerImage(imageList.get(2));
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
		
//		if(in != null) {
//			in.close();
//		}
//		if(out != null) {
//			out.close();
		
		return result;
	}

}
