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
	
	//예약날짜 테이블 데이터 입력
	public int insertReserveDate(ReserveVo adminVo)  {
		System.out.println("[ReserveDao.insertReserveDate()]");
		
		return sqlSession.insert("reserve.insertReserveDateData", adminVo);
	}
	
	//예약시간 테이블 데이터 입력
	public int insertReserveTime(ReserveVo adminVo) {
		System.out.println("[ReserveDao.insertReserveTime()]");
		
		return sqlSession.insert("reserve.insertReserveTimeData", adminVo);
	}
	
	
	//예약시간 테이블 확인
	public ReserveVo selectReserveTime(ReserveVo adminVo) {
		System.out.println("[ReserveDao.selectReserveTime()]");
		ReserveVo a = sqlSession.selectOne("reserve.selectReserveTime", adminVo);
		System.out.println(a);
		return sqlSession.selectOne("reserve.selectReserveTime", adminVo);
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
}









