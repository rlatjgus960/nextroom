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
	public List<AdminReserveVo> getTime(Map<String, Object> rMap) {
		System.out.println("[AdminReserveService.getTime()]");
		
		List<AdminReserveVo> themeTimeList = adminDao.getTime(rMap);
		
		return themeTimeList;
	}
	
	//예약가능 시간 변경
	public int timeModify(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveService.timeModify()]");
		int reserveState;
		int result = 0;
		
		//예약날짜 테이블 존재유무 확인
		AdminReserveVo date = adminDao.selectReserveDate(adminVo);
		System.out.println("date = " + date);
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
	
	
	//테마별 예약정보 가져오기
	public Map<String, Object> getResevInfo(Map<String, Object> rMap, int crtPage) {
		System.out.println("[AdminReserveService.getResevInfo()]");
		
		int listCnt = 3; 
		
		
		//crtPage 계산(- 값일 때 --> 1page 처리)
		crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
		
		
		//시작번호 계산하기
		int startRnum = (crtPage - 1)*listCnt + 1; 
				
		//끝번호 계산하기
		int endRnum = (startRnum + listCnt) - 1;
		
		List<AdminReserveVo> themeReserveList = adminDao.getResevInfo(startRnum, endRnum, rMap);
		
		//전체글 갯수
		int totalCount = adminDao.selectTotalCnt(rMap);
		System.out.println("totalCount"+totalCount);
		
		//페이지당 버틍 갯수
		int pageBtnCount = 5;
		
		//마지막 버튼 번호
		int endPageBtnNo = (int)Math.ceil((crtPage/(double)pageBtnCount))*pageBtnCount;
		
		//시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount-1);
		
		//다음 화살표 표현 유무
		boolean next = false;
		if((endPageBtnNo * listCnt) < totalCount) {
			next = true;
		} else {
			endPageBtnNo = (int)Math.ceil(totalCount/(double)listCnt);
		}
		
		//이전 화살표 표현 유무
		boolean prev = false;
		if(startPageBtnNo != 1) {
			prev = true;
		}
		
		//리턴하기
		Map<String, Object> listMap = new HashMap<String, Object>();
		
		listMap.put("themeReserveList", themeReserveList);
		listMap.put("prev", prev);
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		
		return listMap;
	}
	
	
	
	//예약 상세 정보 가져오기
	public AdminReserveVo getReserveDetailInfo(int reserveNo) {
		System.out.println("[AdminReserveService.getReserveDetailInfo()]");
		
		AdminReserveVo reserveModalVo = adminDao.getReserveDetailInfo(reserveNo);
		
		return reserveModalVo;
	}
	

	//예약취소
	public int delReserve(int reserveNo) {
		System.out.println("[AdminReserveService.delReserve()]");
		
		int count = adminDao.updatePaymentState(reserveNo);
		adminDao.updateAdminReserveState(reserveNo);
		
		return count;
	}
	
	//입실확인
	public int checkIn(AdminReserveVo adminVo) {
		System.out.println("[AdminReserveService.checkIn()]");
		
		int count = adminDao.insertPreRecord(adminVo);
		System.out.println("테테테스트" + count);
		
		return count;
	}
	
	
}









