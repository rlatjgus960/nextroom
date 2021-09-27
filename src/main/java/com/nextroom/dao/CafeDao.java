package com.nextroom.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.CafeVo;

@Repository
public class CafeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int addCafe(CafeVo cafeVo) {
		
		System.out.println("[CafeDao.addCafe()]");
		
		return sqlSession.insert("cafe.addCafe", cafeVo);
	}

}
