package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RankDao;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.UserHistoryVo;

@Service
public class RankService {

	@Autowired
	RankDao rankDao;

	public List<RatingVo> getRankList() {

		List<RatingVo> rankList = rankDao.selectRankList();

		return rankList;
	}

	public Map<String, Object> getUserDetail(String nickName) {

		Map<String, Object> detailMap = new HashMap<String, Object>();

		int userNo = rankDao.selectUserNo(nickName);

		if (userNo > 0) {
			System.out.println("랭크서비스 - 유저넘버" + userNo);

			RatingVo ratingVo = rankDao.selectUserStat(userNo);
			System.out.println(ratingVo);

			int avgCleartime = ratingVo.getAvgClearTime();

			int avgMin = (int) avgCleartime / 60;
			int avgSec = avgCleartime % 60;
			System.out.println(avgMin + "" + avgSec);
			String avgClearTime = avgMin + "분" + " " + avgSec + "초";

			ratingVo.setShowAvgClearTime(avgClearTime);

			double winRate = (double) ratingVo.getWonGame() / ratingVo.getTotalGame();

			winRate = Math.round(winRate * 100) / 100.00;

			ratingVo.setWinRate(winRate * 100);

			double noHintWinRate = (double) ratingVo.getNoHintGame() / ratingVo.getTotalGame();

			noHintWinRate = Math.round(noHintWinRate * 100) / 100.00;

			ratingVo.setNoHintWinRate(noHintWinRate * 100);

			System.out.println(noHintWinRate);

			String gameHistory = "";
			gameHistory += ratingVo.getTotalGame() + "전 ";
			gameHistory += ratingVo.getWonGame() + "승 ";
			gameHistory += (ratingVo.getTotalGame() - ratingVo.getWonGame()) + "패";

			ratingVo.setGameHistory(gameHistory);

			List<UserHistoryVo> uList = rankDao.selectUserHistory(userNo);

			System.out.println(uList);

			for (int i = 0; i < uList.size(); i++) {

				int recordTime = uList.get(i).getRecordTime();

				int min = (int) recordTime / 60;
				int sec = recordTime % 60;
				System.out.println(min + "" + sec);
				String clearTime = min + "분" + " " + sec + "초";

				uList.get(i).setClearTime(clearTime);

				if (uList.get(i).getRecordClear().equals("success")) {
					uList.get(i).setRecordClear("탈출 성공");
				} else {
					uList.get(i).setRecordClear("탈출 실패");
				}

			}

			detailMap.put("statVo", ratingVo);
			detailMap.put("historyList", uList);

			return detailMap;
		} else {
			return null;
		}
	}
}
