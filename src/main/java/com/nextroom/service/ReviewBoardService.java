package com.nextroom.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.dao.ReviewBoardDao;
import com.nextroom.vo.FreeBoardImgVo;
import com.nextroom.vo.FreeBoardVo;
import com.nextroom.vo.ReviewBoardVo;

@Service
public class ReviewBoardService {
	
	@Autowired
	private ReviewBoardDao reviewBoardDao;
	
	//2021.09.30 by 원호
	//후기게시판 리스트,페이징
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
	
	//2021.10.10 by 원호
	//후기게시판 리스트,페이징(인기)
	public Map<String, Object> reviewHot(String keyword, int crtPage){
		System.out.println("Service.reviewList");
		
		///리스트 가져올 갯수 정하기
		int listCnt = 10;
		
		crtPage = (crtPage >0) ? crtPage : (crtPage = 1);
		
		//시작번호 계산
		int startRnum = (crtPage-1)*listCnt+1;
		//끝번호 계산
		int endRnum = (startRnum+listCnt)-1;
		
		
		List<ReviewBoardVo> reviewList = reviewBoardDao.reviewBoardHot(keyword, startRnum, endRnum);
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
	
	//2021.10.10 by 원호
	//후기게시판 리스트,페이징(조회)
	public Map<String, Object> reviewLike(String keyword, int crtPage){
		System.out.println("Service.reviewList");
		
		///리스트 가져올 갯수 정하기
		int listCnt = 10;
		
		crtPage = (crtPage >0) ? crtPage : (crtPage = 1);
		
		//시작번호 계산
		int startRnum = (crtPage-1)*listCnt+1;
		//끝번호 계산
		int endRnum = (startRnum+listCnt)-1;
		
		
		List<ReviewBoardVo> reviewList = reviewBoardDao.reviewBoardLike(keyword, startRnum, endRnum);
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

			String saveDir = "C:\\javaStudy\\workspace_web\\nextroom\\upload\\";

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

			
		} else {
			//이미지 업로드 하지 않고 글만 쓰는 경우
			reviewCount = reviewBoardDao.ReviewInsert2(reviewBoardVo);
			
		}
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
	//게시글 수정폼
	public ReviewBoardVo reviewModify(int reviewNo) {
		System.out.println("[Service.reviewModify]");
		
		ReviewBoardVo reviewBoardVo = reviewBoardDao.reviewModify(reviewNo);
		
		return reviewBoardVo;
	}

	//2021.10.07 by 원호
	//게시글 수정
	/*
	 * public int modify(ReviewBoardVo reviewBoardVo) {
	 * System.out.println("[Service.modify]");
	 * 
	 * return reviewBoardDao.modify(reviewBoardVo); }
	 */
	
	//2021.10.07 by 원호
	//게시글 수정
	public int modify(ReviewBoardVo reviewBoardVo) {
		System.out.println("[Service.modify]");
		System.out.println(reviewBoardVo);
		
		// ******************** 후기게시판 이미지 처리 ********************//
		MultipartFile file = reviewBoardVo.getReviewImgFile();
		System.out.println(reviewBoardVo.getReviewImgFile());
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

			reviewCount = reviewBoardDao.modify2(reviewBoardVo);

			System.out.println("ReviewInsert 후 Vo : " + reviewBoardVo);

			
		} else {
			//이미지 업로드 하지 않고 글만 쓰는 경우
			reviewCount = reviewBoardDao.modify(reviewBoardVo);
			
		}
		
		
		return reviewBoardDao.modify(reviewBoardVo);
	}
	
	
	//2021.10.11 by 원호
	//게시글 추천
	public int reviewLike(ReviewBoardVo reviewBoardVo) {
		System.out.println("서비스 추천");
		int like = reviewBoardDao.reviewLike(reviewBoardVo);
		System.out.println(like);
		return like;
	}
	
	//2021.10.12 by 원호
	//게시글 비추천
	public int reviewHate(ReviewBoardVo reviewBoardVo) {
		System.out.println("서비스 비추천");
		int hate = reviewBoardDao.reviewHate(reviewBoardVo);
		System.out.println(hate);
		return hate;
	}
	
	
	//2021.10.13 by 원호
	//댓글 등록
	public ReviewBoardVo addComment(ReviewBoardVo reviewBoardVo) {
		System.out.println("[Service.addComment]");
		
		System.out.println("닉넴 없음?"+reviewBoardVo);//유저닉넴x
		int count = reviewBoardDao.addComment(reviewBoardVo);
		System.out.println("닉넴 있음?"+reviewBoardVo);//유저닉넴 있나 확인
		
		int commentNo = reviewBoardVo.getCommentNo();
		
		ReviewBoardVo resultVo = reviewBoardDao.selectComment(commentNo);
		
		return resultVo;
	}
	
	//2021.10.13 by 원호
	//댓글 리스트
	public List<ReviewBoardVo> commentList(int reviewNo){
		System.out.println("Service.commentList");
		System.out.println(reviewNo);
		List<ReviewBoardVo> commentList = reviewBoardDao.commentList(reviewNo);
		
		return commentList;
	}
	
////////////////////////////////////////////////////////////////////////////////////////
	/*자유게시판*/
	
	//2021.10.07 by 원호
	//자유게시판 글 등록
	public int boardWrite(FreeBoardVo freeBoardVo) {
		System.out.println("Service.reviewWrite");
		System.out.println("[Service Vo정보]" + freeBoardVo);
		
		// ******************** 자유게시판 이미지 처리 ********************/
		MultipartFile file = freeBoardVo.getBoardImgFile();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		int boardCount = 0;

		if (fileSize > 0) {

			String saveDir = "C:\\javaStudy\\workspace_web\\nextroom\\upload\\";

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

			freeBoardVo.setBoardImg(saveName);

			boardCount = reviewBoardDao.boardInsert(freeBoardVo);

			System.out.println("ReviewInsert 후 Vo : " + freeBoardVo);

			
		} else if(fileSize == 0){
			//이미지 업로드 하지 않고 글만 쓰는 경우
			boardCount = reviewBoardDao.boardInsert2(freeBoardVo);
			
		}
		// ******************** //카페 메인 이미지 처리 ********************/
		return boardCount;
		
	}
	

	//2021.10.07 by 원호
	//자유게시판 글 등록
//	public int boardWrite(FreeBoardVo freeBoardVo) {
//		System.out.println("Service.reviewWrite");
//		System.out.println("[Service Vo정보]" + freeBoardVo);
//		
//		
//		
//		// ******************** 자유게시판 이미지 처리 ********************/
//		List<FreeBoardImgVo> freeImgList = new ArrayList();
//		
//		List<MultipartFile> freeboardImg = freeBoardVo.getMultiImgFile();
//		
//		int boardCount = 0;
//		
//		
//		boardCount = reviewBoardDao.boardInsert(freeBoardVo);
//		
//		for(int i = 0; i < freeboardImg.size(); i++) {
//			long fileSize = freeboardImg.get(i).getSize();
//			System.out.println("fileSize " + fileSize);
//			
//			if (fileSize > 0) {
//
//				String saveDir = "C:\\javaStudy\\workspace_web\\nextroom\\upload\\";
//
//				System.out.println(freeboardImg.get(i).getOriginalFilename());
//				System.out.println(freeboardImg.get(i).getSize());
//
//				// 원파일이름
//				String orgName = freeboardImg.get(i).getOriginalFilename();
//				System.out.println(orgName);
//
//				// 확장자
//				String exName = freeboardImg.get(i).getOriginalFilename()
//						.substring(freeboardImg.get(i).getOriginalFilename().lastIndexOf("."));
//				System.out.println(exName);
//
//				// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
//				String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
//				System.out.println(saveName);
//
//				// 파일패스
//				String filePath = saveDir + "\\" + saveName;
//				System.out.println(filePath);
//
//				// 파일 서버하드디스크에 저장
//				try {
//					byte[] fileData = freeboardImg.get(i).getBytes();
//					OutputStream out = new FileOutputStream(filePath);
//					BufferedOutputStream bout = new BufferedOutputStream(out);
//
//					bout.write(fileData);
//					bout.close();
//
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//
//				FreeBoardImgVo freeBoardImgVo = new FreeBoardImgVo();
//				freeBoardImgVo.setImg(saveName);
//				freeBoardImgVo.setBoardNo(freeBoardVo.getBoardNo());
//
//				boardCount += reviewBoardDao.addMultiImg(freeBoardImgVo);
//				
//			} else if(fileSize == 0){
//				//이미지 업로드 하지 않고 글만 쓰는 경우
//				boardCount = reviewBoardDao.boardInsert2(freeBoardVo);
//				
//			}
//		}
//		
//		return boardCount;
//		
//	}
	
	//2021.10.07 by 원호
	//자유게시판 리스트,페이징,검색
	public Map<String, Object> boardList(String keyword, int crtPage){
		System.out.println("Service.boardList");
		
		///리스트 가져올 갯수 정하기
		int listCnt = 10;
		
		crtPage = (crtPage >0) ? crtPage : (crtPage = 1);
		
		//시작번호 계산
		int startRnum = (crtPage-1)*listCnt+1;
		//끝번호 계산
		int endRnum = (startRnum+listCnt)-1;
		
		
		List<FreeBoardVo> boardList = reviewBoardDao.boardList(keyword, startRnum, endRnum);
		System.out.println("[Service Vo 정보]:" + boardList);
		
		
		//전체 글 갯수
		int totalCount = reviewBoardDao.totalCnt(keyword);
		
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
		listMap.put("boardList", boardList);
		listMap.put("prev", prev);	
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		return listMap;
	}
	//2021.10.10 by 원호
	//자유게시판 인기순
	public Map<String, Object> boardHot(String keyword, int crtPage){
		System.out.println("Service.boardList");
		
		///리스트 가져올 갯수 정하기
		int listCnt = 10;
		
		crtPage = (crtPage >0) ? crtPage : (crtPage = 1);
		
		//시작번호 계산
		int startRnum = (crtPage-1)*listCnt+1;
		//끝번호 계산
		int endRnum = (startRnum+listCnt)-1;
		
		
		List<FreeBoardVo> boardList = reviewBoardDao.boardHot(keyword, startRnum, endRnum);
		System.out.println("[Service Vo 정보]:" + boardList);
		
		
		//전체 글 갯수
		int totalCount = reviewBoardDao.totalCnt(keyword);
		
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
		listMap.put("boardList", boardList);
		listMap.put("prev", prev);	
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		return listMap;
	}
	
	//2021.10.10 by 원호
	//자유게시판(조회순)
	public Map<String, Object> boardLike(String keyword, int crtPage){
		System.out.println("Service.boardList");
		
		///리스트 가져올 갯수 정하기
		int listCnt = 10;
		
		crtPage = (crtPage >0) ? crtPage : (crtPage = 1);
		
		//시작번호 계산
		int startRnum = (crtPage-1)*listCnt+1;
		//끝번호 계산
		int endRnum = (startRnum+listCnt)-1;
		
		
		List<FreeBoardVo> boardList = reviewBoardDao.boardLike(keyword, startRnum, endRnum);
		System.out.println("[Service Vo 정보]:" + boardList);
		
		
		//전체 글 갯수
		int totalCount = reviewBoardDao.totalCnt(keyword);
		
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
		listMap.put("boardList", boardList);
		listMap.put("prev", prev);	
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		return listMap;
	}
	
	//2021.10.07 by 원호
	//자유게시판 글 읽기
	public FreeBoardVo freeRead(int boardNo) {
		System.out.println("[Service.freeRead]");		
		
		//조회수 올리기
		int count = reviewBoardDao.hitup(boardNo);
		
		//게시판정보 가져오기
		FreeBoardVo freeBoardVo = reviewBoardDao.freeRead(boardNo);
		System.out.println(freeBoardVo);
		
		return freeBoardVo;
	}
	

	
	//2021.10.08 by 원호
	//자유게시판 게시글 삭제
	public int freeDelete(int boardNo) {
		System.out.println("[Service.freeDelete]");
		
		int count = reviewBoardDao.freeDelete(boardNo);
		
		return count;
		
	}
	
	//2021.10.11 by 원호
	//게시글 추천
	public int readLike(FreeBoardVo freeBoardVo) {
		System.out.println("서비스 추천");
		int like = reviewBoardDao.readLike(freeBoardVo);
		System.out.println(like);
		return like;
	}
	
	//2021.10.12 by 원호
	//게시글 비추천
	public int readHate(FreeBoardVo freeBoardVo) {
		System.out.println("서비스 비추천");
		int hate = reviewBoardDao.readHate(freeBoardVo);
		System.out.println(hate);
		return hate;
	}
	
	//2021.10.12 by 원호
	//자유게시판 게시글 수정폼
	public FreeBoardVo freeModify(int boardNo) {
		System.out.println("[Service.freeModify]");
		
		FreeBoardVo freeBoardVo = reviewBoardDao.freeModify(boardNo);
		
		return freeBoardVo;
	}
	
	
	//2021.10.17 by 원호
	//게시글 수정
	public int freemodify(FreeBoardVo freeBoardVo) {
		System.out.println("[Service.freemodify]");
		System.out.println(freeBoardVo);
		
		// ******************** 자유게시판 이미지 처리 ********************//
		MultipartFile file = freeBoardVo.getBoardImgFile();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		int boardCount = 0;

		if (fileSize > 0) {

			String saveDir = "C:\\javaStudy\\workspace_web\\nextroom\\upload\\";

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

			freeBoardVo.setBoardImg(saveName);

			boardCount = reviewBoardDao.freemodify2(freeBoardVo);

			System.out.println("ReviewInsert 후 Vo : " + freeBoardVo);

			
		} else if(fileSize == 0){
			//이미지 업로드 하지 않고 글만 쓰는 경우
			boardCount = reviewBoardDao.freemodify(freeBoardVo);
			
		}
		// ******************** //카페 메인 이미지 처리 ********************/
		
		return reviewBoardDao.freemodify(freeBoardVo);
	}
	
	
	//2021.10.15 by 원호
	//댓글 리스트
	public List<FreeBoardVo> freeCommentList(int boardNo){
		System.out.println("Service.freeCommentList");
		System.out.println(boardNo);
		List<FreeBoardVo> freeCommentList = reviewBoardDao.freeCommentList(boardNo);
		
		return freeCommentList;
	}
	
	
	//2021.10.15 by 원호
	//댓글 등록
	public FreeBoardVo commentAdd(FreeBoardVo freeBoardVo) {
		System.out.println("[Service.commentAdd]");
		
		int count = reviewBoardDao.commentAdd(freeBoardVo);
		
		int commentNo = freeBoardVo.getCommentNo();
		
		FreeBoardVo resultVo = reviewBoardDao.selectBoardComment(commentNo);
		
		return resultVo;
	}
}
