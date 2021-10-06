package com.nextroom.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.dao.ReviewBoardDao;
import com.nextroom.vo.ReviewBoardVo;

@Service
public class ReviewBoardService {
	
	@Autowired
	private ReviewBoardDao reviewBoardDao;
	
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
		
		
		List<ReviewBoardVo> reviewList = reviewBoardDao.reviewBoardList(keyword, startRnum, endRnum);
		System.out.println("[Service Vo 정보]:" + reviewList);
		
		
		//전체 글 갯수
		int totalCount = reviewBoardDao.selectTotalCnt(keyword);
		
		//페이지당 버튼 갯수
		int pageBtnCount = 5;
		
		int endPageBtnNo = (int)Math.ceil((crtPage/(double)pageBtnCount)) * pageBtnCount;
		
		//시작버튼 번호
		int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);
		
		
		//다음 화살표 표현 유무
		boolean next = false;
		if((endPageBtnNo * listCnt) < totalCount) {
			next = true;
		} else {

			endPageBtnNo = (int)Math.ceil(totalCount / (double)listCnt);
		}		
		
		//이전 화살표 표현 유무
		boolean prev = false;
		if(startPageBtnNo != 1) {
			prev = false;
		}
		

		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("reviewList", reviewList);
		listMap.put("prev", prev);	
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
		
		// ******************** 후기게시판 이미지 처리 ********************//
		MultipartFile file = reviewBoardVo.getReviewImgFile();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		int reviewCount = 0;

		if (fileSize > 0) {

			String saveDir = "C:\\javaStudy\\upload\\";

			System.out.println(file.getOriginalFilename());
			System.out.println(file.getSize());

			// 원파일이름
			String orgName = file.getOriginalFilename();
			System.out.println(orgName);

			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			System.out.println(exName);

			// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
			System.out.println(saveName);

			// 파일패스
			String filePath = saveDir + "\\" + saveName;
			System.out.println(filePath);

			// 파일 서버하드디스크에 저장
			try {
				byte[] fileData = file.getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);
				bout.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			reviewBoardVo.setReviewImg(saveName);

			reviewCount = reviewBoardDao.ReviewInsert(reviewBoardVo);

			System.out.println("ReviewInsert 후 Vo : " + reviewBoardVo);

		}
		// ******************** //카페 메인 이미지 처리 ********************//
		
		return reviewCount;
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
		System.out.println("Servie.getThemeList");
		System.out.println("Servie.getThemeList: " + cafeNo);
		
		List<ReviewBoardVo> themeList = reviewBoardDao.getThemeList(cafeNo);
		
		
		return themeList;
	}
	
	
	//2021.10.02 by 원호
	//게시판 글 읽기
	public ReviewBoardVo getBoard(int reviewNo) {
		System.out.println("[Service.getBoard]");		
		
		//조회수 올리기
		int count = reviewBoardDao.hit(reviewNo);
		
		//게시판정보 가져오기
		ReviewBoardVo reviewBoardVo = reviewBoardDao.selectBoard(reviewNo);
		System.out.println(reviewBoardVo);
		
		return reviewBoardVo;
	}
	
	//2021.10.06 by 원호
	//게시글 삭제
	public int reviewDelete(int reviewNo) {
		System.out.println("[Service.reviewDelete]");
		
		int count = reviewBoardDao.reviewDelete(reviewNo);
		
		return count;
		
	}
	
	//2021.10.06 by 원호
	//게시글 수정
	public ReviewBoardVo reviewModify(int reviewNo) {
		System.out.println("[Service.reviewModify]");
		
		ReviewBoardVo reviewBoardVo = reviewBoardDao.reviewModify(reviewNo);
		
		return reviewBoardVo;
	}

}
