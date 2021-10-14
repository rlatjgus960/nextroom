package com.nextroom.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.ReserveVo;

@Repository
public class ReserveDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	//테마 리스트 불러오기
	public List<ReserveVo> getTheme(int cafeNo) {
		System.out.println("[ReserveDao.getTheme()]");
		List<ReserveVo> adminThemeList = sqlSession.selectList("reserve.selectThemeList", cafeNo);
		
		return adminThemeList;
	}
	
	//테마 리스트 불러오기
	public List<ReserveVo> getThemeForReserve(int cafeNo) {
		System.out.println("[ReserveDao.getThemeForReserve()]");
		List<ReserveVo> adminThemeList = sqlSession.selectList("reserve.selectThemeForReserve", cafeNo);
		
		return adminThemeList;
	}
	
	//테마 리스트 불러오기
	public List<ReserveVo> getDisableTheme(int cafeNo) {
		System.out.println("[ReserveDao.getDisableTheme()]");
		List<ReserveVo> adminThemeList = sqlSession.selectList("reserve.selectDisableTheme", cafeNo);
		
		return adminThemeList;
	}

	//시간 리스트 불러오기
	public List<ReserveVo> getTime(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.getTime()]");
		List<ReserveVo> themeTimeList = sqlSession.selectList("reserve.selectTimeList", rMap);
		
		return themeTimeList;
	}
	
	//예약날짜 테이블 확인
	public ReserveVo selectReserveDate(ReserveVo adminVo) {
		System.out.println("[ReserveDao.selectReserveDate()]");
		
		return sqlSession.selectOne("reserve.selectReserveDate",adminVo);
	}
	
	//예약날짜 테이블 확인
	public ReserveVo selectReserveDate(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.selectReserveDate()]");
		System.out.println(rMap);
		
		return sqlSession.selectOne("reserve.selectReserveDateByMap",rMap);
	}
	
	//예약날짜 테이블 데이터 입력
	public int insertReserveDate(ReserveVo adminVo)  {
		System.out.println("[ReserveDao.insertReserveDate()]");
		
		return sqlSession.insert("reserve.insertReserveDateData", adminVo);
	}
	
	//예약날짜 테이블 데이터 입력
	public int insertReserveDate(Map<String, Object> rMap)  {
		System.out.println("[ReserveDao.insertReserveDate()]");
		
		return sqlSession.insert("reserve.insertReserveDateDataByMap", rMap);
	}
	
	//예약시간 테이블 데이터 입력
	public int insertReserveTime(ReserveVo adminVo) {
		System.out.println("[ReserveDao.insertReserveTime()]");
		
		return sqlSession.insert("reserve.insertReserveTimeData", adminVo);
	}
	
	//예약시간 테이블 데이터 입력
	public int insertReserveTime(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.insertReserveTime()]");
		
		return sqlSession.insert("reserve.insertReserveTimeDataByMap", rMap);
	}
	
	
	//예약시간 테이블 확인
	public ReserveVo selectReserveTime(ReserveVo adminVo) {
		System.out.println("[ReserveDao.selectReserveTime()]");
		ReserveVo a = sqlSession.selectOne("reserve.selectReserveTime", adminVo);
		System.out.println(a);
		return sqlSession.selectOne("reserve.selectReserveTime", adminVo);
	}
	
	//예약시간 테이블 확인
	public ReserveVo selectReserveTime(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.selectReserveTime()]");
		
		return sqlSession.selectOne("reserve.selectReserveTimeByMap", rMap);
	}
	
	
	//업체예약상태표시용 변경
	public int updateReserveState(Map<String, Object> tMap) {
		System.out.println("[ReserveDao.updateReserveState()]");
		
		return sqlSession.update("reserve.updateReserveState", tMap);
	}
	
	
	//테마별 예약정보 확인
	public List<ReserveVo> getResevInfo(int startRnum, int endRnum, Map<String, Object> rMap) {
		System.out.println("[ReserveDao.getResevInfo()]");
		
		rMap.put("startRnum", startRnum);
		rMap.put("endRnum", endRnum);
		
		List<ReserveVo> themeReserveList = sqlSession.selectList("reserve.getResevInfo", rMap);
		
		return themeReserveList;
	}
	
	//전체 예약 갯수 구하기
	public int selectTotalCnt(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.selectTotalCnt()]");
		
		return sqlSession.selectOne("reserve.selectTotalCnt", rMap);
	}
	
	
	//예약상세 정보 가져오기
	public ReserveVo getReserveDetailInfo(int reserveNo) {
		System.out.println("[ReserveDao.getReserveDetailInfo()]");
		
		ReserveVo reserveModalVo = sqlSession.selectOne("reserve.getReserveDetailInfo", reserveNo);
		System.out.println("다오에서 프린트"+reserveModalVo);
		
		return reserveModalVo;
	}
	
	
	//결제 상태 바꾸기
	public int updatePaymentState(int reserveNo) {
		System.out.println("[ReserveDao.updatePaymentState()]");
		
		int count = sqlSession.update("reserve.updatePaymentState", reserveNo);
		
		return count;
	}
	
	//업체예약상태표시용 변경
	public int updateAdminReserveState(int reserveNo) {
		System.out.println("[ReserveDao.updateAdminReserveState()]");
		
		return sqlSession.update("reserve.updateAdminReserveState", reserveNo);
	}
	
	
	//게임정보 테이블 데이터 입력
	public int insertPreRecord(ReserveVo adminVo) {
		System.out.println("[ReserveDao.insertPreRecord()]");
		
		return sqlSession.insert("reserve.insertPreRecord", adminVo);
	}
	
	//게임정보 테이블 데이터 입력
	public ReserveVo selectPreR(int reserveNo) {
		System.out.println("[ReserveDao.selectPreR()]");
		
		return sqlSession.selectOne("reserve.selectPreR", reserveNo);
	}
	
	
	//예약 시 지역별 카페 리스트 불러오기
	public List<ReserveVo> selectCafeList(String sidoDetail) {
		System.out.println("[ReserveDao.selectCafeList()]");
		List<ReserveVo> cafeList = sqlSession.selectList("reserve.selectCafeList", sidoDetail);
		System.out.println("cafeList : "+cafeList);
		
		return cafeList;
	}
	
	//게임정보 테이블 데이터 입력
	public ReserveVo selectName(ReserveVo rVo) {
		System.out.println("[ReserveDao.selectName()]");
		
		return sqlSession.selectOne("reserve.selectName", rVo);
	}
	
	//테마 가격 리스트 불러오기
	public List<ReserveVo> getPriceLsit(ReserveVo rVo) {
		System.out.println("[ReserveDao.getPriceLsit()]");
		List<ReserveVo> priceList = sqlSession.selectList("reserve.selectPriceList", rVo);
		
		return priceList;
	}
	
	//테마 가격 리스트 불러오기
	public ReserveVo getOnePrice(ReserveVo rVo) {
		System.out.println("[ReserveDao.getOnePrice()]");
		ReserveVo price = sqlSession.selectOne("reserve.selectPrice", rVo);
		
		return price;
	}
	
	//유저확인
	public ReserveVo idCheck(String id) {
		System.out.println("[ReserveDao.idCheck()]");
		ReserveVo reserveVo = sqlSession.selectOne("reserve.selectUserById", id);
		
		return reserveVo;
	}

	//예약 테이블 정보 입력
	public int insertReserve(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.insertReserve()]");
		
		return sqlSession.insert("reserve.insertReserve", rMap);
	}
	
	//예약회원 테이블 정보 입력
	public int insertReservePeople(ReserveVo hiVo) {
		System.out.println("[ReserveDao.insertReservePeople()]");
		
		System.out.println(hiVo);
		
		return sqlSession.insert("reserve.insertReservePeople", hiVo);
	}
	
	//reserve 테이블 정보 가져오기
	public ReserveVo selectReserve(Map<String, Object> rMap) {
		System.out.println("[ReserveDao.selectReserve()]");
		
		return sqlSession.selectOne("reserve.selectReserve", rMap);
	}
}














