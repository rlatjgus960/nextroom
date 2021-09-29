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
	public List<AdminReserveVo> getTime(int themeNo) {
		System.out.println("[AdminReserveDao.getTime()]");
		List<AdminReserveVo> themeTimeList = sqlSession.selectList("adminReserve.selectTimeList", themeNo);
		
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
}









