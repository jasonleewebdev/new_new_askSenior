package com.askSenior.app.lecture.dao;

import java.util.HashMap;
import java.util.List;

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
	
	public List<LectureVO> selectAll(LectureVO lectureVO) {
		return sqlSession.selectList("lecture.selectAll", lectureVO);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("lecture.getTotal");
	}
}
