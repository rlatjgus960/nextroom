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

		//******************** 카페 메인 이미지 처리 ********************//
		MultipartFile file = cafeVo.getCafeImg();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

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

		int cafeCount = cafeDao.addCafekey(cafeVo);

		System.out.println("addCafekey 후 Vo : " + cafeVo);

		cafeNo = cafeVo.getCafeNo();
		//******************** //카페 메인 이미지 처리 ********************//
		
		

		//******************** 카페 내부이미지 처리 ********************//
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
		//******************** //카페 내부이미지 처리 ********************//
		
		
		//******************** 주소 처리 ********************//
		
		//케이스나 이프문으로... if 서울중에 .. 해당 구 아니면 서울 기타..
		//해당하는 지역 있으면 .. 그거로 들어가게.. 음..
		
		
		//******************** //주소 처리 ********************//
		
		
		
		//******************** 회원 타입 변경(1-->2) ********************//
		int userCount = cafeDao.changeUser(cafeVo.getUserNo());
		
		count = cafeCount+inteCount+userCount;

		System.out.println(cafeCount+"개 카페 추가, "+inteCount+"개 내부이미지 저장, "+userCount+"명 유저 타입변경 완료");
		return count;
	}

}
