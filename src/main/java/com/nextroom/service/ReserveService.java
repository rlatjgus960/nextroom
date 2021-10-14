package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.ReserveDao;
import com.nextroom.vo.ReserveVo;

@Service
public class ReserveService {

	@Autowired
	private ReserveDao reserveDao;
	
	//테마 정보 불러오기
	public List<ReserveVo> getTheme(int cafeNo) {
		System.out.println("[ReserveService.getTheme()]");
		
		List<ReserveVo> adminThemeList = reserveDao.getTheme(cafeNo);
		
		return adminThemeList;
	}
	
	//테마 정보 불러오기
	public List<ReserveVo> getThemeForReserve(int cafeNo) {
		System.out.println("[ReserveService.getThemeForReserve()]");
		
		List<ReserveVo> adminThemeList = reserveDao.getThemeForReserve(cafeNo);
		
		return adminThemeList;
	}
	
	//테마 정보 불러오기
	public List<ReserveVo> getDisableTheme(int cafeNo) {
		System.out.println("[ReserveService.getDisableTheme()]");
		
		List<ReserveVo> adminThemeList = reserveDao.getDisableTheme(cafeNo);
		
		return adminThemeList;
	}
	
	//테마별 시간 정보 불러오기
	public List<ReserveVo> getTime(Map<String, Object> rMap) {
		System.out.println("[ReserveService.getTime()]");
		
		List<ReserveVo> themeTimeList = reserveDao.getTime(rMap);
		
		return themeTimeList;
	}
	
	//예약가능 시간 변경
	public int timeModify(ReserveVo adminVo) {
		System.out.println("[ReserveService.timeModify()]");
		int reserveState;
		int result = 0;
		
		//예약날짜 테이블 존재유무 확인
		ReserveVo date = reserveDao.selectReserveDate(adminVo);
		System.out.println("date = " + date);
		if(date == null) {
			//없을때 만들기
			System.out.println("해당 날짜의 데이터가 존재하지 않아 새롭게 생성합니다.");
			reserveDao.insertReserveDate(adminVo);
			
			date = reserveDao.selectReserveDate(adminVo);
			adminVo.setReserveDateNo(date.getReserveDateNo());
			
			//하위테이블인 예약시간에도 정보 추가 (예약불가능으로 생성)
			reserveState = 3;
			adminVo.setReserveState(reserveState); // 3 예약불가능
			reserveDao.insertReserveTime(adminVo);
			
			result = 3;
			
		} else {
			//예약날짜 테이블이 존재할 경우
			//예약시간 테이블 정보 확인
			adminVo.setReserveDateNo(date.getReserveDateNo());
			ReserveVo time = reserveDao.selectReserveTime(adminVo);
			
			if(time == null) {
				//해당 시간의 정보가 없을 경우
				//예약불가능으로 데이터 생성
				reserveState = 3;
				adminVo.setReserveState(reserveState); // 3 예약불가능
				System.out.println(adminVo);
				reserveDao.insertReserveTime(adminVo);
				
				result = 3;
			} else {
				//해당 정보가 있을 경우 state 확인
				int state = time.getReserveState();
				System.out.println(state);
				Map<String, Object> tMap = new HashMap<String, Object>();
				tMap.put("reserveTimeNo", time.getReserveTimeNo());
				
				if(state == 1) { // 예약가능 -> 예약불가능
					tMap.put("reserveState", 3);
					reserveDao.updateReserveState(tMap);
					
					result = 3;
				} else if(state == 2) { // 예약완료 상태
					result = 2; 
					
				} else if(state == 3) { // 예약불가능 -> 예약가능
					tMap.put("reserveState", 1);
					reserveDao.updateReserveState(tMap);
					
					result = 1;
				}
			}
			
		}
				
		
		
		
		return result;
	}
	
	
	//테마별 예약정보 가져오기
	public Map<String, Object> getResevInfo(Map<String, Object> rMap, int crtPage) {
		System.out.println("[ReserveService.getResevInfo()]");
		
		int listCnt = 3; 
		
		
		//crtPage 계산(- 값일 때 --> 1page 처리)
		crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
		
		
		//시작번호 계산하기
		int startRnum = (crtPage - 1)*listCnt + 1; 
				
		//끝번호 계산하기
		int endRnum = (startRnum + listCnt) - 1;
		
		List<ReserveVo> themeReserveList = reserveDao.getResevInfo(startRnum, endRnum, rMap);
		
		//전체글 갯수
		int totalCount = reserveDao.selectTotalCnt(rMap);
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
	public ReserveVo getReserveDetailInfo(int reserveNo) {
		System.out.println("[ReserveService.getReserveDetailInfo()]");
		
		ReserveVo reserveModalVo = reserveDao.getReserveDetailInfo(reserveNo);
		
		return reserveModalVo;
	}
	

	//예약취소
	public int delReserve(int reserveNo) {
		System.out.println("[ReserveService.delReserve()]");
		
		int count = reserveDao.updatePaymentState(reserveNo);
		reserveDao.updateAdminReserveState(reserveNo);
		
		return count;
	}
	
	//입실확인
	public int checkIn(ReserveVo adminVo) {
		System.out.println("[ReserveService.checkIn()]");
		
		int count = reserveDao.insertPreRecord(adminVo);
		System.out.println("테테테스트" + count);
		
		return count;
	}
	
	//입실확인
	public ReserveVo btnCheckIn(int reserveNo) {
		System.out.println("[ReserveService.btnCheckIn()]");
		
		ReserveVo preR = reserveDao.selectPreR(reserveNo);
		System.out.println("테테테스트" + preR);
		
		return preR;
	}
	
	//지역별 카페 리스트
	public List<ReserveVo> getCafeList(String sidoDetail) {
		System.out.println("[ReserveService.getCafeList()]");
		
		List<ReserveVo> cafeList = reserveDao.selectCafeList(sidoDetail);
		//System.out.println("테테테스트" + cafeList);
		
		return cafeList;
	}
	
	//카페, 테마 이름 확인
	public ReserveVo getCafeThemeName(ReserveVo rVo) {
		System.out.println("[ReserveService.getCafeThemeName()]");
		
		ReserveVo ctVo = reserveDao.selectName(rVo);
		//System.out.println("테테테스트" + ctVo);
		
		return ctVo;
	}
	
	//가격리스트
	public List<ReserveVo> getPrice(ReserveVo rVo) {
		System.out.println("[ReserveService.getPrice()]");
		
		List<ReserveVo> priceList = reserveDao.getPriceLsit(rVo);
		//System.out.println("테테테스트" + ctVo);
		
		return priceList;
	}
	
	//인원에 따른 가격
	public ReserveVo getOnePrice(ReserveVo rVo) {
		System.out.println("[ReserveService.getOnePrice()]");
		
		ReserveVo price = reserveDao.getOnePrice(rVo);
		//System.out.println("테테테스트" + ctVo);
		
		return price;
	}
	
	//유저확인
	public ReserveVo idCheck(String id) {
		System.out.println("[ReserveService.idCheck()]");
		
		ReserveVo reserveVo = reserveDao.idCheck(id);
		
		return reserveVo;
	}
	
	//예약하고 정보 가져오기
	public ReserveVo getReserveComplete(Map<String, Object> rMap, Map<String, Object> uMap) {
		System.out.println("[ReserveService.getReserveComplete()]");
		
		ReserveVo hiVo = new ReserveVo();
		
		//예약날짜 테이블 존재확인
		ReserveVo date = reserveDao.selectReserveDate(rMap);
		System.out.println("date"+date);
		
		if(date == null) {
			//없을 때 만들기
			System.out.println("없을 때 만들기");
			reserveDao.insertReserveDate(rMap);
		}
		
		date = reserveDao.selectReserveDate(rMap);
		rMap.put("reserveDateNo",date.getReserveDateNo());
		
		System.out.println("첫번째"+rMap);
		
		ReserveVo time = reserveDao.selectReserveTime(rMap);
		System.out.println("time" + time);
		rMap.put("reserveState",2);
		
		
		if(time == null) {
			//없을 때 만들기
			reserveDao.insertReserveTime(rMap);
		} else if(time.getReserveState() == 1) {
			time = reserveDao.selectReserveTime(rMap);
			rMap.put("reserveTimeNo",time.getReserveTimeNo());
			System.out.println("두번째"+rMap);
			reserveDao.updateReserveState(rMap);
		}
		
		time = reserveDao.selectReserveTime(rMap);
		rMap.put("reserveTimeNo",time.getReserveTimeNo());
		System.out.println("세번째"+rMap);
		
		//예약 테이블 정보 입력
		reserveDao.insertReserve(rMap);
		ReserveVo rVo = reserveDao.selectReserve(rMap);
		System.out.println("rVo"+rVo);
		
		int reserveNo = rVo.getReserveNo();
		int no;
		
		
		for( Object value : uMap.values() ) {
			System.out.println( String.format("value : %s", value ) );
			no = (int)value;
			System.out.println(no);
			
			if(no != -1) {
				hiVo.setReserveNo(reserveNo);
				hiVo.setUserNo(no);
				System.out.println("살려줘");
				reserveDao.insertReservePeople(hiVo);
			}
		}
	    
		ReserveVo finishVo = reserveDao.getReserveDetailInfo(reserveNo);
		//System.out.println("finishVo"+finishVo);
		
		return finishVo;
	}
	
	
	
}









