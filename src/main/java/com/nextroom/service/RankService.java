package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RankDao;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.ThemeRankVo;
import com.nextroom.vo.UserHistoryVo;

@Service
public class RankService {

	@Autowired
	RankDao rankDao;

	public List<RatingVo> getRankList() {

		List<RatingVo> rankList = rankDao.selectRankList();

		return rankList;
	}

	public Map<String, Object> getUserDetail(String nickName, int crtPage) {

		Map<String, Object> detailMap = new HashMap<String, Object>();

		int userNo = rankDao.selectUserNo(nickName);

		if (userNo > 0) {
			System.out.println("랭크서비스 - 유저넘버" + userNo);

			RatingVo ratingVo = rankDao.selectUserStat(userNo);

			System.out.println("기록없는vo" + ratingVo);

			if (ratingVo == null) {
				return null;
			} else {
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

				int listCnt = 3;

				// crtPage 계산(- 값일 때 --> 1page 처리)
				crtPage = (crtPage > 0) ? crtPage : (crtPage = 1);

				// 시작번호 계산하기
				int startRnum = (crtPage - 1) * listCnt + 1;

				// 끝번호 계산하기
				int endRnum = (startRnum + listCnt) - 1;

				List<UserHistoryVo> uList = rankDao.selectUserHistory(userNo, startRnum, endRnum);

				// 전체글 갯수
				int totalCount = rankDao.selectTotalCnt(userNo);
				System.out.println("totalCount" + totalCount);

				// 페이지당 버틍 갯수
				int pageBtnCount = 5;

				// 마지막 버튼 번호
				int endPageBtnNo = (int) Math.ceil((crtPage / (double) pageBtnCount)) * pageBtnCount;

				// 시작 버튼 번호
				int startPageBtnNo = endPageBtnNo - (pageBtnCount - 1);

				// 다음 화살표 표현 유무
				boolean next = false;
				if ((endPageBtnNo * listCnt) < totalCount) {
					next = true;
				} else {
					endPageBtnNo = (int) Math.ceil(totalCount / (double) listCnt);
				}

				// 이전 화살표 표현 유무
				boolean prev = false;
				if (startPageBtnNo != 1) {
					prev = true;
				}
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
				detailMap.put("prev", prev);
				detailMap.put("startPageBtnNo", startPageBtnNo);
				detailMap.put("endPageBtnNo", endPageBtnNo);
				detailMap.put("next", next);

				return detailMap;
			}
		} else {
			return null;
		}
	}

	public List<ThemeRankVo> getThemeRankList(String listType) {

		List<ThemeRankVo> rankList = rankDao.selectThemeRankList(listType);

		for (int i = 0; i < rankList.size(); i++) {

			rankList.get(i).setRank(i + 1);

		}

		System.out.println("랭크 부여된" + rankList);
		return rankList;
	}

	public List<String> getNicknameList() {

		List<String> nicknameList = rankDao.selectNicknameList();

		// String[] nickList = new String[nicknameList.size()];

		/*
		 * for(int i =0; i<nickList.length;i++) {
		 * System.out.println(nicknameList.get(i)); nickList[i] = nicknameList.get(i); }
		 */

		// System.out.println(nicknameList);
		// System.out.println(nickList.length);
		return nicknameList;
	}
	
	public RatingVo getMypageStat(int userNo) {
		RatingVo ratingVo = rankDao.selectUserStat(userNo);
		
		if (ratingVo == null) {
			return null;
		} else {
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
		}
		return ratingVo;
	}
}
