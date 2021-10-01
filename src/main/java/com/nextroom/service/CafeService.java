package com.nextroom.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.dao.CafeDao;
import com.nextroom.vo.CafeVo;

@Service
public class CafeService {

	@Autowired
	private CafeDao cafeDao;

	public int addCafe(CafeVo cafeVo, List<MultipartFile> inteList) {
		System.out.println("[CafeService.addCafe()]");

		int cafeNo = 0;
		int count = 0;

		// ******************** 주소 처리 ********************//

		String sido = cafeVo.getSido();
		String sidoDetail = cafeVo.getSidoDetail();

		if (sido.contains("서울")) {
			if (sidoDetail.contains("서대문구") || sidoDetail.contains("마포구")) {
				cafeVo.setSidoDetail("홍대&신촌");
			} else if (sidoDetail.contains("강남구") || sidoDetail.contains("서초구")) {
				cafeVo.setSidoDetail("강남");
			} else if (sidoDetail.contains("성동구") || sidoDetail.contains("광진구")) {
				cafeVo.setSidoDetail("건대");
			} else if (sidoDetail.contains("종로구")) {
				cafeVo.setSidoDetail("대학로");
			} else if (sidoDetail.contains("강북구") || sidoDetail.contains("도봉구") || sidoDetail.contains("노원구")) {
				cafeVo.setSidoDetail("강북");
			} else if (sidoDetail.contains("관악구")) {
				cafeVo.setSidoDetail("신림");
			} else {
				cafeVo.setSidoDetail("서울(기타)");
			}
		} else if (sido.contains("경기")) {
			if (sidoDetail.contains("수원")) {
				cafeVo.setSidoDetail("수원");
			} else if (sidoDetail.contains("안양")) {
				cafeVo.setSidoDetail("안양");
			} else if (sidoDetail.contains("고양")) {
				cafeVo.setSidoDetail("고양");
			} else if (sidoDetail.contains("부천")) {
				cafeVo.setSidoDetail("부천");
			} else {
				cafeVo.setSidoDetail("경기(기타)");
			}
		} else if (sido.contains("강원")) {
			cafeVo.setSidoDetail("강원");
		} else if (sido.contains("충청")) {
			if (sidoDetail.contains("천안")) {
				cafeVo.setSidoDetail("천안");
			} else if (sidoDetail.contains("청주")) {
				cafeVo.setSidoDetail("청주");
			} else {
				cafeVo.setSidoDetail("충청(기타)");
			}
		} else if (sido.contains("전라")) {
			if (sidoDetail.contains("전주")) {
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
		MultipartFile file = cafeVo.getCafeImg();
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

			cafeVo.setCafeImgPath(saveName);

			cafeCount = cafeDao.addCafekey(cafeVo);

			System.out.println("addCafekey 후 Vo : " + cafeVo);

			cafeNo = cafeVo.getCafeNo();

		} 
		
		
		// ******************** //카페 메인 이미지 처리 ********************//

		// ******************** 카페 내부이미지 처리 ********************//
		List<String> intePathList = new ArrayList<>();

		for (int i = 0; i < inteList.size(); i++) {

			long intefileSize = inteList.get(i).getSize();
			System.out.println("fileSize " + intefileSize);

			// 이미지가 첨부되었을때
			if (intefileSize > 0) {

				String inteSaveDir = "C:\\javaStudy\\upload\\";

				System.out.println(inteList.get(i).getOriginalFilename());
				System.out.println(inteList.get(i).getSize());

				// 원파일이름
				String inteOrgName = inteList.get(i).getOriginalFilename();
				System.out.println(inteOrgName);

				// 확장자
				String inteExName = inteList.get(i).getOriginalFilename()
						.substring(inteList.get(i).getOriginalFilename().lastIndexOf("."));
				System.out.println(inteExName);

				// 저장파일이름(관리때문에 겹치지 않는 새 이름 부여)
				String inteSaveName = System.currentTimeMillis() + UUID.randomUUID().toString() + inteExName;
				System.out.println(inteSaveName);

				// 파일패스
				String inteFilePath = inteSaveDir + "\\" + inteSaveName;
				System.out.println(inteFilePath);

				// 파일 서버하드디스크에 저장
				try {
					byte[] fileData = inteList.get(i).getBytes();
					OutputStream out = new FileOutputStream(inteFilePath);
					BufferedOutputStream bout = new BufferedOutputStream(out);

					bout.write(fileData);
					bout.close();

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				intePathList.add(inteSaveName);
			}

		}

		int inteCount = cafeDao.addInteriorImg(cafeNo, intePathList);
		// ******************** //카페 내부이미지 처리 ********************//

		// ******************** 회원 타입 변경(1-->2) ********************//
		int userCount = cafeDao.changeUser(cafeVo.getUserNo());

		count = cafeCount + inteCount + userCount;

		System.out.println(cafeCount + "개 카페 추가, " + inteCount + "개 내부이미지 저장, " + userCount + "명 유저 타입변경 완료");
		return count;
	}

}
