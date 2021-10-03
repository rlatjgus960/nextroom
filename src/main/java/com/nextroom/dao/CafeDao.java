package com.nextroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.CafeVo;
import com.nextroom.vo.PriceVo;
import com.nextroom.vo.TimeVo;

@Repository
public class CafeDao {

	@Autowired
	private SqlSession sqlSession;

	// 카페 추가
	public int addCafe(CafeVo cafeVo) {

		System.out.println("[CafeDao.addCafe()]");

		return sqlSession.insert("cafe.addCafe", cafeVo);
	}

	// 카페 추가 및 카페번호 가져오기
	public int addCafekey(CafeVo cafeVo) {

		System.out.println("[CafeDao.addCafekey()]");

		return sqlSession.insert("cafe.addCafeKey", cafeVo);
	}

	// 카페 내부이미지 추가
	public int addInteriorImg(CafeVo cafeVo) {
		System.out.println("[CafeDao.addInteriorImg()]");

		int cafeNo = cafeVo.getCafeNo();
		List<String> inteList = cafeVo.getInteList();

		System.out.println("Dao cafeNo : " + cafeNo);

		int count = 0;

		for (int i = 0; i < inteList.size(); i++) {

			Map<Object, Object> inteMap = new HashMap<Object, Object>();
			inteMap.put("cafeNo", cafeNo);
			inteMap.put("intePath", inteList.get(i));

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

	// 한개 카페 정보 가져오기
	public CafeVo getCafe(int cafeNo) {
		System.out.println("[CafeDao.getCafe()]");
		return sqlSession.selectOne("cafe.getCafe", cafeNo);
	}

	// 카페 인테리어 리스트 가져오기
	public List<String> getInteList(int cafeNo) {
		System.out.println("[CafeDao.getInteList()]");

		System.out.println("dao cafeNo : " + cafeNo);

		List<String> inteList = sqlSession.selectList("cafe.getInteList", cafeNo);

		System.out.println("dao inteList : " + inteList);

		return inteList;
	}

	// 카페 수정
	public int updateCafe(CafeVo cafeVo) {

		System.out.println("[CafeDao.updateCafe()]");

		return sqlSession.update("cafe.updateCafe", cafeVo);
	}

	// 카페 리스트 출력
	public List<CafeVo> getCafeList() {

		System.out.println("[CafeDao.getCafeList()]");

		return sqlSession.selectList("cafe.getCafeList");
	}

	// 카페 상세페이지 출력용 데이터 가져오기
	public CafeVo getCafeDetail(int cafeNo) {
		System.out.println("[CafeDao.getCafeDetail()]");

		return sqlSession.selectOne("cafe.getOneCafe", cafeNo);
	}

	// 테마 추가
	public int addTheme(CafeVo cafeVo) {
		System.out.println("[CafeDao.addTheme()]");
		return sqlSession.insert("cafe.addTheme", cafeVo);
	}

	// 테마 시간표 추가
	public int addThemeTime(List<TimeVo> timeList) {
		System.out.println("[CafeDao.addThemeTime()]");
		return sqlSession.insert("cafe.addThemeTime", timeList);
	}

	// 테마 가격 추가
	public int addThemePrice(List<PriceVo> priceList) {
		System.out.println("[CafeDao.addThemePrice()]");
		return sqlSession.insert("cafe.addThemePrice", priceList);
	}

}
