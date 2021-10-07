package com.nextroom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public int addUser(UserVo userVo) {
		System.out.println("유서비-회원추가   "+userVo);
		
		int count = userDao.insertUser(userVo);
		
		
		
		return count;
	}
}
