package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.AdminReserveDao;
import com.nextroom.vo.AdminReserveVo;

@Service
public class AdminReserveService {

	@Autowired
	private AdminReserveDao adminDao;
	
	//테마 정보 불러오기
	public List<AdminReserveVo> getTheme(int cafeNo) {
		System.out.println("[AdminReserveService.getTheme()]");
		
		List<AdminReserveVo> adminThemeList = adminDao.getTheme(cafeNo);
		
		return adminThemeList;
	}
	
	//테마별 시간 정보 불러오기
	public List<AdminReserveVo> getTime(int themeNo) {
		System.out.println("[AdminReserveService.getTime()]");
		
		List<AdminReserveVo> themeTimeList = adminDao.getTime(themeNo);
		
		return themeTimeList;
	}
	
	//예약가능 시간 변경
	public int timeModify(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveService.timeModify()]");
		int reserveState;
		int result = 0;
		
		//예약날짜 테이블 존재유무 확인
		AdminReserveVo date = adminDao.selectReserveDate(adminVo);
		System.out.println(date);
		if(date == null) {
			//없을때 만들기
			System.out.println("해당 날짜의 데이터가 존재하지 않아 새롭게 생성합니다.");
			adminDao.insertReserveDate(adminVo);
			
			date = adminDao.selectReserveDate(adminVo);
			adminVo.setReserveDateNo(date.getReserveDateNo());
			
			//하위테이블인 예약시간에도 정보 추가 (예약불가능으로 생성)
			reserveState = 3;
			adminVo.setReserveState(reserveState); // 3 예약불가능
			adminDao.insertReserveTime(adminVo);
			
			result = 3;
			
		} else {
			//예약날짜 테이블이 존재할 경우
			//예약시간 테이블 정보 확인
			adminVo.setReserveDateNo(date.getReserveDateNo());
			AdminReserveVo time = adminDao.selectReserveTime(adminVo);
			
			if(time == null) {
				//해당 시간의 정보가 없을 경우
				//예약불가능으로 데이터 생성
				reserveState = 3;
				adminVo.setReserveState(reserveState); // 3 예약불가능
				System.out.println(adminVo);
				adminDao.insertReserveTime(adminVo);
				
				result = 3;
			} else {
				//해당 정보가 있을 경우 state 확인
				int state = time.getReserveState();
				System.out.println(state);
				Map<String, Object> tMap = new HashMap<String, Object>();
				tMap.put("reserveTimeNo", time.getReserveTimeNo());
				
				if(state == 1) { // 예약가능 -> 예약불가능
					tMap.put("reserveState", 3);
					adminDao.updateReserveState(tMap);
					
					result = 3;
				} else if(state == 2) { // 예약완료 상태
					result = 2; 
					
				} else if(state == 3) { // 예약불가능 -> 예약가능
					tMap.put("reserveState", 1);
					adminDao.updateReserveState(tMap);
					
					result = 1;
				}
			}
			
		}
				
		
		
		
		return result;
	}
	
	
}









