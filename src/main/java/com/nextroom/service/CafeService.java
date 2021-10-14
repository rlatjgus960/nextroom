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

import com.nextroom.dao.CafeDao;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.InteriorVo;
import com.nextroom.vo.PriceVo;
import com.nextroom.vo.ReviewBoardVo;
import com.nextroom.vo.TimeVo;

@Service
public class CafeService {

	@Autowired
	private CafeDao cafeDao;

	// 카페 추가(mypage)
	/* public int addCafe(CafeVo cafeVo, List<MultipartFile> inteList) */
	public int addCafe(CafeVo cafeVo) {
		System.out.println("[CafeService.addCafe()]");

		int count = 0;

		// ******************** 주소 처리 ********************//

		String sido = cafeVo.getSido();
		String sigungu = cafeVo.getSigungu();

		if (sido.contains("서울")) {
			if (sigungu.contains("서대문구") || sigungu.contains("마포구")) {
				cafeVo.setSidoDetail("홍대&신촌");
			} else if (sigungu.contains("강남구") || sigungu.contains("서초구")) {
				cafeVo.setSidoDetail("강남");
			} else if (sigungu.contains("성동구") || sigungu.contains("광진구")) {
				cafeVo.setSidoDetail("건대");
			} else if (sigungu.contains("종로구")) {
				cafeVo.setSidoDetail("대학로");
			} else if (sigungu.contains("강북구") || sigungu.contains("도봉구") || sigungu.contains("노원구")) {
				cafeVo.setSidoDetail("강북");
			} else if (sigungu.contains("관악구")) {
				cafeVo.setSidoDetail("신림");
			} else {
				cafeVo.setSidoDetail("서울(기타)");
			}
		} else if (sido.contains("경기")) {
			if (sigungu.contains("수원")) {
				cafeVo.setSidoDetail("수원");
			} else if (sigungu.contains("안양")) {
				cafeVo.setSidoDetail("안양");
			} else if (sigungu.contains("고양")) {
				cafeVo.setSidoDetail("고양");
			} else if (sigungu.contains("부천")) {
				cafeVo.setSidoDetail("부천");
			} else {
				cafeVo.setSidoDetail("경기(기타)");
			}
		} else if (sido.contains("강원")) {
			cafeVo.setSidoDetail("강원");
		} else if (sido.contains("충청")) {
			if (sigungu.contains("천안")) {
				cafeVo.setSidoDetail("천안");
			} else if (sigungu.contains("청주")) {
				cafeVo.setSidoDetail("청주");
			} else {
				cafeVo.setSidoDetail("충청(기타)");
			}
		} else if (sido.contains("전라")) {
			if (sigungu.contains("전주")) {
				cafeVo.setSidoDetail("전주");
			} else {
				cafeVo.setSidoDetail("전라(기타)");
			}
		} else if (sido.contains("경상")) {
			cafeVo.setSidoDetail("경상(기타)");
		} else if (sido.contains("제주")) {
			cafeVo.setSidoDetail("제주");
		} else if (sido.contains("인천")) {
			cafeVo.setSidoDetail("인천");
		} else if (sido.contains("대전")) {
			cafeVo.setSidoDetail("대전");
		} else if (sido.contains("대구")) {
			cafeVo.setSidoDetail("대구");
		} else if (sido.contains("광주")) {
			cafeVo.setSidoDetail("광주");
		} else if (sido.contains("부산")) {
			cafeVo.setSidoDetail("부산");
		} else if (sido.contains("강원")) {
			cafeVo.setSidoDetail("강원");
		} else if (sido.contains("울산")) {
			cafeVo.setSidoDetail("경상(기타)");
		} else if (sido.contains("세종")) {
			cafeVo.setSidoDetail("충청(기타)");
		}

		// ******************** //주소 처리 ********************//

		// ******************** 카페 메인 이미지 처리 ********************//
		MultipartFile file = cafeVo.getCafeImgFile();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		int cafeCount = 0;

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

			cafeVo.setCafeImg(saveName);

			cafeCount = cafeDao.addCafekey(cafeVo);

			System.out.println("addCafekey 후 Vo : " + cafeVo);

		}
		// ******************** //카페 메인 이미지 처리 ********************//

		// ******************** 카페 내부이미지 처리 ********************//
		List<InteriorVo> inteList = new ArrayList<>();

		List<MultipartFile> interiorImg = cafeVo.getInteriorImg();

		int inteCount = 0;
		for (int i = 0; i < interiorImg.size(); i++) {

			long intefileSize = interiorImg.get(i).getSize();
			System.out.println("fileSize " + intefileSize);

			// 이미지가 첨부되었을때
			if (intefileSize > 0) {

				String inteSaveDir = "C:\\javaStudy\\upload\\";

				System.out.println(interiorImg.get(i).getOriginalFilename());
				System.out.println(interiorImg.get(i).getSize());

				// 원파일이름
				String inteOrgName = interiorImg.get(i).getOriginalFilename();
				System.out.println(inteOrgName);

				// 확장자
				String inteExName = interiorImg.get(i).getOriginalFilename()
						.substring(interiorImg.get(i).getOriginalFilename().lastIndexOf("."));
				System.out.println(inteExName);

				// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
				String inteSaveName = System.currentTimeMillis() + UUID.randomUUID().toString() + inteExName;
				System.out.println(inteSaveName);

				// 파일패스
				String inteFilePath = inteSaveDir + "\\" + inteSaveName;
				System.out.println(inteFilePath);

				// 파일 서버하드디스크에 저장
				try {
					byte[] fileData = interiorImg.get(i).getBytes();
					OutputStream out = new FileOutputStream(inteFilePath);
					BufferedOutputStream bout = new BufferedOutputStream(out);

					bout.write(fileData);
					bout.close();

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				InteriorVo interiorVo = new InteriorVo();
				interiorVo.setImg(inteSaveName);
				interiorVo.setCafeNo(cafeVo.getCafeNo());

				inteCount += cafeDao.addInteriorImg(interiorVo);
				// cafeVo.setInteList(interiorVo);

				// inteList.add(interiorVo);
			}

			// cafeVo.setInteList(inteList);

		}

		// int inteCount = cafeDao.addInteriorImg(cafeVo);
		// ******************** //카페 내부이미지 처리 ********************//

		// ******************** 회원 타입 변경(1-->2) ********************//
		int userCount = cafeDao.changeUser(cafeVo.getUserNo());

		count = cafeCount + inteCount + userCount;

		System.out.println(cafeCount + "개 카페 추가, " + inteCount + "개 내부이미지 저장, " + userCount + "명 유저 타입변경 완료");

		return count;
	}

	// 카페 수정폼 카페정보 한개 가져오기(admin)
	public CafeVo getCafe(int cafeNo) {

		System.out.println("[CafeService.getCafe()]");

		CafeVo cafeVo = cafeDao.getCafe(cafeNo);

		List<InteriorVo> inteList = cafeDao.getInteList(cafeNo);
		cafeVo.setInteList(inteList);

		System.out.println(inteList);

		return cafeVo;
	}

	// 카페 전체 리스트 가져오기
//	public List<CafeVo> getCafeList() {
//
//		System.out.println("[CafeService.getCafeList()]");
//		return cafeDao.getCafeList();
//	}

	public List<CafeVo> getCafeList(String region) {

		System.out.println("[CafeService.getCafeList()]");
		return cafeDao.getCafeList(region);
	}

	// 카페 상세페이지 출력용 가져오기
	public Map<Object, Object> getCafeDetail(int cafeNo) {
		System.out.println("[CafeService.getCafeDetail()]");

		Map<Object, Object> detailMap = new HashMap<Object, Object>();

		CafeVo cafeVo = cafeDao.getCafe(cafeNo);
		List<CafeVo> themeList = cafeDao.getCafeTheme(cafeNo);

		// 카페 내 전체 테마 최대인원 최소인원 구하기
		CafeVo minMaxVo = cafeDao.getMinMaxP(cafeNo);
		System.out.println(minMaxVo);

		if (minMaxVo != null) {
			int min = minMaxVo.getMinPMin();
			int max = minMaxVo.getMaxPMax();
			System.out.println("min:" + min + " max:" + max);

			List<PriceVo> headCountList = new ArrayList<PriceVo>();
			for (int j = min; j <= max; j++) {
				PriceVo headCountVo = new PriceVo();
				headCountVo.setHeadCount(j);
				headCountList.add(headCountVo);
			}

			List<Object> allPriceList = new ArrayList<Object>();

			System.out.println("min max 가져옴");

			for (int i = 0; i < themeList.size(); i++) {

				int themeNo = themeList.get(i).getThemeNo();

				System.out.println("themeNo 가져온 후");
				System.out.println(themeNo);

				List<PriceVo> priceList = new ArrayList<PriceVo>();

				for (int j = min; j <= max; j++) {

					PriceVo priceVo = new PriceVo();
					priceVo.setThemeNo(themeNo);
					priceVo.setHeadCount(j);

					Integer price = cafeDao.getPriceOne(priceVo);

					if (price != null) {
						int intPrice = (int) price;
						priceVo.setPrice(intPrice);
						priceList.add(priceVo);

					} else {

						priceVo.setPrice(0);
						priceList.add(priceVo);

					}

				}
				allPriceList.add(priceList);

				// priceMap.put("allPriceList", allPriceList);
			}

			System.out.println("카페서비스 allPriceList :" + allPriceList);
			System.out.println("카페서비스 headCountList :" + headCountList);

			detailMap.put("allPriceList", allPriceList);
			detailMap.put("headCountList", headCountList);

		}

		// 최소인원부터 최대인원까지 반복문 돌려서 테마별 가격 가져오기

//		  List<Object> priceAllList = new ArrayList<Object>();
//		  
//		  for (int i=0; i<themeList.size(); i++) {
//		  System.out.println(themeList.get(i).getpMax());
//		  
//		  
//		  
//		  int pMax = themeList.get(i).getpMax(); int pMin = themeList.get(i).getpMin();
//		  
//		  
//		  CafeVo getPriceVo = new CafeVo(cafeNo, pMin, pMax);
//		  
//		  priceAllList.add(cafeDao.getAllPrice(getPriceVo));
//		  
//		  }

		List<InteriorVo> inteList = cafeDao.getInteList(cafeNo);

		System.out.println("themeList : " + themeList);
		// System.out.println("priceMap : " + priceMap);
//		System.out.println("priceAllList : " + priceAllList);

		detailMap.put("cafeVo", cafeVo);
		detailMap.put("themeList", themeList);
//		detailMap.put("priceAllList", priceAllList);
		detailMap.put("inteList", inteList);

		return detailMap;
	}

	// 테마 추가
	public int addTheme(CafeVo cafeVo) {

		System.out.println("[CafeService.addTheme()]");
		int count = 0;

		System.out.println("insert theme 전 cafeVo : " + cafeVo);

		// 테마 이미지 처리
		MultipartFile file = cafeVo.getThemeImgFile();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

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

			cafeVo.setThemeImg(saveName);

			count += cafeDao.addTheme(cafeVo);
		}

		System.out.println("insert theme 후 cafeVo : " + cafeVo);
		System.out.println(cafeVo.getThemeNo());

		// 테마 시간표 추가
		List<String> timeTable = cafeVo.getThemeTime();

		System.out.println("timeTable : " + timeTable);

		int themeNo = cafeVo.getThemeNo();

		for (int i = 0; i < timeTable.size(); i++) {

			TimeVo timeVo = new TimeVo();

			timeVo.setThemeNo(themeNo);
			timeVo.setThemeTime(timeTable.get(i));

			count += cafeDao.addThemeTime(timeVo);

		}

		// 테마 가격 추가
		List<Integer> price = cafeVo.getPrice();
		List<Integer> headCount = cafeVo.getHeadCount();

		for (int i = 0; i < price.size(); i++) {

			PriceVo priceVo = new PriceVo();

			priceVo.setThemeNo(themeNo);
			priceVo.setHeadCount(headCount.get(i));
			priceVo.setPrice(price.get(i));

			count += cafeDao.addThemePrice(priceVo);
		}

		return count;
	}

	// 테마 한개 정보 가져오기
//	public Map<Object, Object> getTheme(int themeNo) {
//		System.out.println("[CafeService.getTheme()]");
//		
//		Map<Object, Object> themeMap = new HashMap<Object, Object>();
//		themeMap.put("themeVo", cafeDao.getOneTheme(themeNo));
//		themeMap.put("timeList", cafeDao.getOneTime(themeNo));
//		themeMap.put("priceList", cafeDao.getOnePrice(themeNo));
//		themeMap.put("revireList", cafeDao.getReviewList(themeNo));
//		
//		return themeMap;
//	}

	// 카페 테마 정보 가져오기
	public List<CafeVo> getCafeTheme(int cafeNo) {
		System.out.println("[CafeService.getCafeTheme()]");

		List<CafeVo> themeList = cafeDao.getCafeTheme(cafeNo);
		return themeList;
	}

	// 테마 한개 정보 가져오기
	public CafeVo getOneTheme(int themeNo) {
		System.out.println("[CafeService.getOneTheme()]");
		CafeVo cafeVo = cafeDao.getOneTheme(themeNo);
		cafeVo.setReviewCount(cafeDao.getReviewCount(themeNo));

		return cafeVo;
	}

	// 테마 한개 시간표 가져오기
	public List<TimeVo> getOneTime(int themeNo) {
		System.out.println("[CafeService.getOneTime()]");
		return cafeDao.getOneTime(themeNo);
	}

	// 테마 한개 가격표 가져오기
	public List<PriceVo> getOnePrice(int themeNo) {
		System.out.println("[CafeService.getOnePrice()]");
		return cafeDao.getOnePrice(themeNo);
	}

	// 테마 한개 리뷰 가져오기
	public List<ReviewBoardVo> getReviewList(int themeNo) {
		System.out.println("[CafeService.getReviewList()]");
		return cafeDao.getReviewList(themeNo);
	}

	// 장르 리스트 가져오기
	public List<CafeVo> getGenreList() {
		System.out.println("[CafeService.getGenreList()]");
		return cafeDao.getGenreList();
	}

	// 전체 테마 리스트 가져오기
	public List<CafeVo> getThemeList() {
		System.out.println("[CafeService.getThemeList()]");
		return cafeDao.getThemeList();
	}

	// ajax 카페 목록 가져오기
	public List<CafeVo> cafeList(String region, int startNum) {
		System.out.println("[CafeService.cafeList()]");
		int i = 10;
		startNum = startNum + 1;
		int cnt = startNum + i;
		Map<String, Object> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("cnt", cnt);
		map.put("region", region);

		List<CafeVo> cafeList = cafeDao.cafeList(map);

		return cafeList;
	}

	// 카페 수정
	public int cafeModify(CafeVo cafeVo) {

		System.out.println("[CafeService.cafeModify()]");

		cafeVo.setPrintAddress(cafeVo.getAddress() + " " + cafeVo.getAddressDetail());

		List<MultipartFile> interiorImg = cafeVo.getInteriorImg();

		if (interiorImg.get(0).getSize() > 0) {

			for (int i = 0; i < interiorImg.size(); i++) {

				long intefileSize = interiorImg.get(i).getSize();
				System.out.println("fileSize " + intefileSize);

				// 이미지가 첨부되었을때
				if (intefileSize > 0) {
					String inteSaveDir = "C:\\javaStudy\\upload\\";

					// 원파일이름
					String inteOrgName = interiorImg.get(i).getOriginalFilename();

					// 확장자
					String inteExName = interiorImg.get(i).getOriginalFilename()
							.substring(interiorImg.get(i).getOriginalFilename().lastIndexOf("."));

					// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
					String inteSaveName = System.currentTimeMillis() + UUID.randomUUID().toString() + inteExName;

					// 파일패스
					String inteFilePath = inteSaveDir + "\\" + inteSaveName;

					// 파일 서버하드디스크에 저장
					try {
						byte[] fileData = interiorImg.get(i).getBytes();
						OutputStream out = new FileOutputStream(inteFilePath);
						BufferedOutputStream bout = new BufferedOutputStream(out);
						bout.write(fileData);
						bout.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					InteriorVo interiorVo = new InteriorVo();
					interiorVo.setImg(inteSaveName);
					interiorVo.setCafeNo(cafeVo.getCafeNo());

					cafeDao.addInteriorImg(interiorVo);

				}

			}

		}

		MultipartFile file = cafeVo.getCafeImgFile();
		System.out.println(file);

		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		if (fileSize > 0) {

			String saveDir = "C:\\javaStudy\\upload\\";

			// 원파일이름
			String orgName = file.getOriginalFilename();

			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// 파일패스
			String filePath = saveDir + "\\" + saveName;

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

			cafeVo.setCafeImg(saveName);

			return cafeDao.cafeModify_basic(cafeVo);

		} else {
			return cafeDao.cafeModify_noFile(cafeVo);
		}
	}

	// 테마 수정
	public int themeModify(CafeVo cafeVo) {

		int themeNo = cafeVo.getThemeNo();
		int count = 0;

		// 테마 가격 처리 (테마번호로 삭제 후 다시 추가)
		cafeDao.deleteThemePrice(themeNo);
		List<Integer> price = cafeVo.getPrice();
		List<Integer> headCount = cafeVo.getHeadCount();

		for (int i = 0; i < price.size(); i++) {
			PriceVo priceVo = new PriceVo();
			priceVo.setThemeNo(themeNo);
			priceVo.setHeadCount(headCount.get(i));
			priceVo.setPrice(price.get(i));
			count += cafeDao.addThemePrice(priceVo);
		}

		// 테마 시간표 처리 (테마번호로 삭제 후 다시 추가)
		cafeDao.deleteThemeTime(themeNo);
		List<String> timeTable = cafeVo.getThemeTime();

		System.out.println("timeTable : " + timeTable);
		for (int i = 0; i < timeTable.size(); i++) {
			TimeVo timeVo = new TimeVo();
			timeVo.setThemeNo(themeNo);
			timeVo.setThemeTime(timeTable.get(i));
			count += cafeDao.addThemeTime(timeVo);
		}

		// 이미지 첨부 여부 따라 처리
		MultipartFile file = cafeVo.getThemeImgFile();
		System.out.println(file);

		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		if (fileSize > 0) {

			String saveDir = "C:\\javaStudy\\upload\\";

			// 원파일이름
			String orgName = file.getOriginalFilename();

			// 확장자
			String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

			// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// 파일패스
			String filePath = saveDir + "\\" + saveName;

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

			cafeVo.setThemeImg(saveName);

			// 로고 경로, 블로그 타이틀 업데이트

			return cafeDao.updateTheme_basic(cafeVo);

		} else {
			return cafeDao.updateTheme_noFile(cafeVo);
		}

	}

	// 어드민 테마 삭제
	public int deleteTheme(int themeNo) {
		System.out.println("[CafeService.deleteTheme()]");
		return cafeDao.updateTheme(themeNo);
	}

	// 어드민 카페 인테리어 이미지 삭제
	public int inteDelete(int inteNo) {
		System.out.println("[CafeService.inteDelete()]");
		return cafeDao.inteDelete(inteNo);
	}

}
