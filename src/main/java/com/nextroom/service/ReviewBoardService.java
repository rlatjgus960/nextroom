package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.ReviewBoardDao;
import com.nextroom.vo.ReviewBoardVo;

@Service
public class ReviewBoardService {
	
	@Autowired
	private ReviewBoardDao reviewBoardDao;
	
	/*
	 * //리스트 public List<ReviewBoardVo> list(String keyword){
	 * System.out.println("[Service.list]");
	 * 
	 * //컨트롤러에서 넘어온 키워드 다오로 가자 List<ReviewBoardVo>
	 * reviewBoardList=reviewBoardDao.reviewBoardList(keyword);
	 * System.out.println(reviewBoardList);
	 * 
	 * // return reviewBoardList; }
	 */
	
	
	
	//2021.09.30 by 원호
	//후기게시판 리스트
	public Map<String, Object> reviewList(String keyword, int crtPage){
		System.out.println("Service.reviewList");
		
		///리스트 가져올 갯수 정하기
		int listCnt = 10;
		
		crtPage = (crtPage >0) ? crtPage : (crtPage = 1);
		
		//시작번호 계산
		int startRnum = (crtPage-1)*listCnt+1;
		//끝번호 계산
		int endRnum = (startRnum+listCnt)-1;
		
		
		
		//컨트롤러에서 넘어온 키워드 -> Dao로 보냄
		List<ReviewBoardVo> reviewList = reviewBoardDao.reviewBoardList(keyword, startRnum, endRnum);
		System.out.println("[Service Vo 정보]:" + reviewList);
		
		
		//전체 글 갯수
		int totalCount = reviewBoardDao.selectTotalCnt(keyword);
		
		//페이지당 버튼 갯수
		int pageBtnCount = 1;
		
		int endPageBtnNo = (int)Math.ceil((crtPage/(double)pageBtnCount)) * pageBtnCount;
		
		//시작버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);
		
		
		//다음 화살표 표현 유무
		boolean next = false;
		if((endPageBtnNo * listCnt) < totalCount) {
			next = true;
		} else {
			//다음 화살표 버튼이 없을때 endPageBtnNo을 다시 계산해야 한다.
			//전체 글 갯수(127개) / 한페이지의 갯수(10개) -> 사람이 계산하면 12.7이 나오지만 자바가 계산하면 12로 나옴
			//우리가 필요한 숫자는 13임. 그래서 형변환 한 후에 올림처리함. 그리고 다시 정수형으로 형변환 시킴
			endPageBtnNo = (int)Math.ceil(totalCount / (double)listCnt);
		}								//127개     / 10.0  -> 12.7 -> 올림처리함.->13
		
		
		//127개 /10.0 페이지 --> 12.7:버림처리해서 -> 12로 계산 -> 120 + 7 -> 13페이지까지 나와야함
		
		
		
		
		//이전 화살표 표현 유무
		boolean prev = false;
		if(startPageBtnNo != 1) {
			prev = true;
		}
		
		////////////////////////////
		////Map로 리턴하기
		///////////////////////////
		
		
		//4개를 다 보내려면 map 또는 vo를 만든다.
		   //↓
		//리턴하기 (map)사용	->	사실상 순서는 상관없긴함.
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("reviewList", reviewList);
		listMap.put("prev", prev);			//prev는 boolean형
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		return listMap;
	}

	
	//2021.09.28 by 원호
	//후기게시판 글 등록
	public int reviewWrite(ReviewBoardVo reviewBoardVo) {
		System.out.println("Service.reviewWrite");
		System.out.println("[Service Vo정보]" + reviewBoardVo);
		
		return reviewBoardDao.ReviewInsert(reviewBoardVo);
	}
	
	
	//2021.09.29 by 원호
	//sido사용 cafeNo, cafeName 가져오기
	public List<ReviewBoardVo> getCafeList(String sido){
		System.out.println("Servie.getCafeList");
		System.out.println("Servie에서 sido 내놔" + sido);
		
		List<ReviewBoardVo> cafeList = reviewBoardDao.getCafeList(sido);
		
		return cafeList;
	}
	
	//2021.09.29 by 원호
	//cafeNo로 테마NO, 테마이름가져오기
	public List<ReviewBoardVo> getThemeList(int cafeNo) {
		System.out.println("Servie.getCafeList");
		System.out.println("Servie.getCafeList: " + cafeNo);
		
		List<ReviewBoardVo> themeList = reviewBoardDao.getThemeList(cafeNo);
		
		
		return themeList;
	}

}
