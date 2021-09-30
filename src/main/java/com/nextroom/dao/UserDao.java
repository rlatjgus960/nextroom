package com.nextroom.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	//user 한명 정보 확인하기
	public UserVo selectUser(UserVo userVo) {
		System.out.println("[UserDao.selectUser()]");
		
		return sqlSession.selectOne("user.selectUser", userVo);
	}

	//cafeNo 정보 가져오기
	public int selectCafe(UserVo userVo) {
		System.out.println("[UserDao.selectCafe()]");
		
		return sqlSession.selectOne("user.selectCafe", userVo);
	}
}
