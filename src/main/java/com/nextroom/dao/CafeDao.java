package com.nextroom.dao;

import java.util.List;

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
	
	
	public int addCafekey(CafeVo cafeVo) {

		System.out.println("[CafeDao.addCafekey()]");

		return sqlSession.insert("cafe.addCafekey", cafeVo);
	}
	
	

	public int updateCafe(CafeVo cafeVo) {

		System.out.println("[CafeDao.updateCafe()]");

		return sqlSession.update("cafe.updateCafe", cafeVo);
	}

	public int addInteriorImg(int cafeNo, List<String> intePathList) {
		System.out.println("[CafeDao.addInteriorImg()]");

		int count = 0;

		for (int i = 0; i < intePathList.size(); i++) {
			sqlSession.insert("cafe.addInteriorImg", intePathList.get(i));
			count++;
		}

		return count;
	}

}
