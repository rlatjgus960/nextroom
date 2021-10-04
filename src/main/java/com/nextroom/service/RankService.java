package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RankDao;
import com.nextroom.vo.RatingVo;

@Service
public class RankService {
	
	@Autowired
	RankDao rankDao;
	
	public List<RatingVo> getRankList(){
		
		List<RatingVo> rankList = rankDao.selectRankList();
		
		
		
		return rankList;
	}
}
