package com.nextroom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.CafeDao;
import com.nextroom.vo.CafeVo;

@Service
public class CafeService {
	
	@Autowired
	private CafeDao cafeDao;
	
	
	public int addCafe(CafeVo cafeVo) {
		
		System.out.println("[CafeService.addCafe()]");
		
		return cafeDao.addCafe(cafeVo);
	}

}
