package com.nextroom.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
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

	public int addCafe(CafeVo cafeVo) {

		System.out.println("[CafeService.addCafe()]");

		/* cafeDao.addCafe(cafeVo); */

		/* int count = cafeDao.addInteriorImg(cafeVo.getInteriorImg()); */

		// 카페메인이미지 파일처리
		MultipartFile file = cafeVo.getCafeImg();
		long fileSize = file.getSize();
		System.out.println("fileSize " + fileSize);

		//카페이미지가 첨부되었을때
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
			
			return cafeDao.addCafe(cafeVo);

		} else {
			
			return cafeDao.addCafe(cafeVo);
			
		}

	}

}
