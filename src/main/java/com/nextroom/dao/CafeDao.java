package com.nextroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.CafeVo;

@Repository
public class CafeDao {

	@Autowired
	private SqlSession sqlSession;

	//카페 추가
	public int addCafe(CafeVo cafeVo) {

		System.out.println("[CafeDao.addCafe()]");

		return sqlSession.insert("cafe.addCafe", cafeVo);
	}

	//카페 추가 및 카페번호 가져오기
	public int addCafekey(CafeVo cafeVo) {

		System.out.println("[CafeDao.addCafekey()]");

		return sqlSession.insert("cafe.addCafeKey", cafeVo);
	}

	
	//카페 내부이미지 추가
	public int addInteriorImg(int cafeNo, List<String> intePathList) {
		System.out.println("[CafeDao.addInteriorImg()]");

		System.out.println("Dao cafeNo : "+cafeNo);
		
		int count = 0;
		

		for (int i = 0; i < intePathList.size(); i++) {
			
			Map<Object, Object> inteMap = new HashMap<Object, Object>();
			inteMap.put("cafeNo", cafeNo);
			inteMap.put("intePath", intePathList.get(i));
			
			sqlSession.insert("cafe.addInteriorImg", inteMap);
			System.out.println(inteMap);
			count++;
		}

		return count;
	}
	
	
	// 일반유저 --> 관리자유저로 상태 전환
	public int changeUser(int userNo) {
		
		System.out.println("[CafeDao.changeUser()]");
		
		return sqlSession.update("cafe.updateUser", userNo);
	}
	

	//한개 카페 정보 가져오기
	public CafeVo getCafe(int cafeNo) {
		System.out.println("[CafeDao.getCafe()]");
		return sqlSession.selectOne("cafe.getCafe", cafeNo);
	}
	
	//카페 수정
	public int updateCafe(CafeVo cafeVo) {

		System.out.println("[CafeDao.updateCafe()]");

		return sqlSession.update("cafe.updateCafe", cafeVo);
	}

}
