package com.nextroom.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.dao.UserDao;
import com.nextroom.vo.UserVo;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	//로그인 사용자 정보 가져오기
	public UserVo getUser(UserVo userVo) {
		System.out.println("[UserService.getUser()]");
		
		UserVo authUser = userDao.selectUser(userVo);
		
		return authUser;
	}
	
	//기업사용자 정보 가져오기
	public int getCafeNo(UserVo userVo) {
		System.out.println("[UserService.getCafeNo()]");
		
		int cafeNo = userDao.selectCafe(userVo);
		
		return cafeNo;
	}
	
	//회원가입
	public void addUser(UserVo userVo) {
		System.out.println("유서비-회원추가   "+userVo);
		
		MultipartFile file = userVo.getProfileImg();
		//파일사이즈
		long fileSize = file.getSize();
		System.out.println("파일싸이즈: " + fileSize);
		
		if(fileSize > 0) {	
			
		// 파일 업로드 처리
		String saveDir = "C:\\Javastudy\\workspace_web\\nextroom\\webapp\\assets\\image\\profile\\";

		// 원래 파일 이름
		String orgName = file.getOriginalFilename();
		System.out.println("오알지: " + orgName);
		
		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

		
		// 저장파일이름(관리 때문에 겹치지 않는 새이름을 부여해야한다.)
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		
		
		// 파일패스(경로)
		String filePath = saveDir + saveName;

		
		// 파일을 서버의 하드디스크에 저장
		try {
			byte[] fileDate = file.getBytes();
			OutputStream out = new FileOutputStream(filePath); // 위치와 파일이름이 함께있는 filePath를써줘야한다.
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileDate);
			bout.close();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			userVo.setProfile(saveName);
		
			userDao.insertUser(userVo);
		
			
		} else{
			
			String saveName = "defaultprofile.png";
			
			userVo.setProfile(saveName);
			
			userDao.insertUser(userVo);
			
		}
		
		
	}
}
