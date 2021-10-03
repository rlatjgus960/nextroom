package com.nextroom.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.AdminReserveVo;

@Repository
public class AdminReserveDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	//테마 리스트 불러오기
	public List<AdminReserveVo> getTheme(int cafeNo) {
		System.out.println("[AdminReserveDao.getTheme()]");
		List<AdminReserveVo> adminThemeList = sqlSession.selectList("adminReserve.selectThemeList", cafeNo);
		
		return adminThemeList;
	}

	//시간 리스트 불러오기
	public List<AdminReserveVo> getTime(Map<String, Object> rMap) {
		System.out.println("[AdminReserveDao.getTime()]");
		List<AdminReserveVo> themeTimeList = sqlSession.selectList("adminReserve.selectTimeList", rMap);
		
		return themeTimeList;
	}
	
	//예약날짜 테이블 확인
	public AdminReserveVo selectReserveDate(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveDao.selectReserveDate()]");
		
		return sqlSession.selectOne("adminReserve.selectReserveDate",adminVo);
	}
	
	//예약날짜 테이블 데이터 입력
	public int insertReserveDate(AdminReserveVo adminVo)  {
		System.out.println("[AdminReserveDao.insertReserveDate()]");
		
		return sqlSession.insert("adminReserve.insertReserveDateData", adminVo);
	}
	
	//예약시간 테이블 데이터 입력
	public int insertReserveTime(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveDao.insertReserveTime()]");
		
		return sqlSession.insert("adminReserve.insertReserveTimeData", adminVo);
	}
	
	
	//예약시간 테이블 확인
	public AdminReserveVo selectReserveTime(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveDao.selectReserveTime()]");
		AdminReserveVo a = sqlSession.selectOne("adminReserve.selectReserveTime", adminVo);
		System.out.println(a);
		return sqlSession.selectOne("adminReserve.selectReserveTime", adminVo);
	}
	
	
	//업체예약상태표시용 변경
	public int updateReserveState(Map<String, Object> tMap) {
		System.out.println("[AdminReserveDao.updateReserveState()]");
		
		return sqlSession.update("adminReserve.updateReserveState", tMap);
	}
	
	
	//테마별 예약정보 확인
	public List<AdminReserveVo> getResevInfo(Map<String, Object> rMap) {
		System.out.println("[AdminReserveDao.getResevInfo()]");
		
		List<AdminReserveVo> themeReserveList = sqlSession.selectList("adminReserve.getResevInfo", rMap);
		
		return themeReserveList;
	}
	
	//테마별 예약정보 확인
	public List<AdminReserveVo> getResevInfo(int cafeNo) {
		System.out.println("[AdminReserveDao.getResevInfo()]");
		
		List<AdminReserveVo> themeReserveList = sqlSession.selectList("adminReserve.getAllResevInfo", cafeNo);
		
		return themeReserveList;
	}
	
	
	//예약상세 정보 가져오기
	public AdminReserveVo getReserveDetailInfo(int reserveNo) {
		System.out.println("[AdminReserveDao.getReserveDetailInfo()]");
		
		AdminReserveVo reserveModalVo = sqlSession.selectOne("adminReserve.getReserveDetailInfo", reserveNo);
		System.out.println("다오에서 프린트"+reserveModalVo);
		
		return reserveModalVo;
	}
	
	
	//결제 상태 바꾸기
	public int updatePaymentState(int reserveNo) {
		System.out.println("[AdminReserveDao.updatePaymentState()]");
		
		int count = sqlSession.update("adminReserve.updatePaymentState", reserveNo);
		
		return count;
	}
	
	//업체예약상태표시용 변경
	public int updateAdminReserveState(int reserveNo) {
		System.out.println("[AdminReserveDao.updateAdminReserveState()]");
		
		return sqlSession.update("adminReserve.updateAdminReserveState", reserveNo);
	}
	
	
	//게임정보 테이블 데이터 입력
	public int insertPreRecord(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveDao.insertPreRecord()]");
		
		return sqlSession.insert("adminReserve.insertPreRecord", adminVo);
	}
}









