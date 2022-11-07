package com.askSenior.app.lecture.dao;

import org.apache.ibatis.session.SqlSession;

import com.askSenior.app.lecture.vo.LectureVO;
import com.mybatis.config.MyBatisConfig;

public class LectureDAO {
	public SqlSession sqlSession;
	
	public LectureDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(LectureVO lectureVO) {
		sqlSession.insert("lecture.insert", lectureVO);
	}
}
