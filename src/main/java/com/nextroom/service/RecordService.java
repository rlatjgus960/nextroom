package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RankDao;
import com.nextroom.dao.RecordDao;
import com.nextroom.vo.PreRecordVo;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.RecordVo;

@Service
public class RecordService {

	@Autowired
	RecordDao recordDao;
	@Autowired
	RankDao rankDao;

	// 게임 리스트 가져오기
	public List<PreRecordVo> getGameList(int cafeNo) {

		return recordDao.getGameList(cafeNo);
	}

	// gameNo로 멤버 아이디 가져오기
	public List<String> getMemberList(int gameNo) {

		List<String> userIdList = recordDao.selectMemberId(gameNo);

		System.out.println(userIdList);

		return userIdList;
	}

	// '완료'된 게임리스트 가져오기
	public List<PreRecordVo> getCompleteList(int cafeNo) {

		List<PreRecordVo> preList = recordDao.getCompleteList(cafeNo);

		for (int i = 0; i < preList.size(); i++) {

			int no = preList.get(i).getGameNo();
			System.out.println(no);

			PreRecordVo prerecordVo = new PreRecordVo();

			prerecordVo = (PreRecordVo) recordDao.getReadRecordList(no);

			System.out.println("갔다온 브이오" + prerecordVo);

			int cleartime = prerecordVo.getRecordTime();

			int min = (int) cleartime / 60;
			int sec = cleartime % 60;
			System.out.println(min + "" + sec);
			String clearTime = min + "분" + " " + sec + "초";

			preList.get(i).setClearTime(clearTime);
			preList.get(i).setRecordHints(prerecordVo.getRecordHints());
			preList.get(i).setRecordTime(prerecordVo.getRecordTime());
			preList.get(i).setRecordNo(prerecordVo.getRecordNo());

			System.out.println("완성된 브이오" + preList.get(i));

		}

		return preList;
	}

	// 기록 입력하기 , rankVo에 기록 담기
	public int RecordAdd(RecordVo recordVo, List<String> members) {

		System.out.println("서비스" + recordVo + " 멤버 " + members);

		int count = 0;
		// 유저넘버 갖고오기
		for (int i = 0; i < members.size(); i++) {

			// id로 userNo 알아내기
			int n = recordDao.selectUserNo(members.get(i));

			// VO에 id 넣기
			recordVo.setUserNo(n);

			// recordVo insert시키기
			recordDao.insertRecord(recordVo);

			// gameState '완료'로 바꾸기
			recordDao.updateState(recordVo);

			// rating테이블에 기록 입력하기.

			// 담은 userNo로 정보 알아내기
			RatingVo ratingVo = rankDao.selectRating(n);

			// 평균기록 계산해서 보여주기용만들기 + rating 계산
			int cleartime = ratingVo.getAvgClearTime();

			int min = (int) cleartime / 60;
			int sec = cleartime % 60;
			System.out.println(min + "" + sec);
			String clearTime = min + "분" + " " + sec + "초";

			ratingVo.setShowAvgClearTime(clearTime);

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

			System.out.println(ratingVo); /////////// 여기까지 Vo완성 --> 이제 테이블에 데이터 쳐너쳐너

			double totalGamePoint = ratingVo.getTotalGame() * 1.01;
			double wonGamePoint = ratingVo.getWonGame() * 1.20;
			double noHintGamePoint = ratingVo.getNoHintGame() * 1.50;
			double failPoint = (ratingVo.getTotalGame() - ratingVo.getWonGame()) * 0.90;
			double totalRating = (totalGamePoint + wonGamePoint + noHintGamePoint - failPoint) * 100;

			int rankRating = (int) totalRating;

			ratingVo.setRankRating(rankRating);

			System.out.println("레이팅 추가 " + ratingVo);

			rankDao.updateRating(ratingVo);

			count++;
		}

		System.out.println(count + "건 저장");

		return count;

	}

	// 기록 수정하기
	public int modifyRecord(RecordVo recordVo, List<String> members) {

		int count = 0;

		for (int i = 0; i < members.size(); i++) {

			// id로 userno 알아내기
			int n = recordDao.selectUserNo(members.get(i));

			// vo에 id 넣기
			recordVo.setUserNo(n);

			// recordvo update시키기
			recordDao.updateRecord(recordVo);

			// userNo 담기

			System.out.println(n);

			// 담은 userNo로 정보 알아내기
			RatingVo ratingVo = rankDao.selectRating(n);

			// 평균기록 계산해서 보여주기용만들기 + rating 계산
			int cleartime = ratingVo.getAvgClearTime();

			int min = (int) cleartime / 60;
			int sec = cleartime % 60;
			System.out.println(min + "" + sec);
			String clearTime = min + "분" + " " + sec + "초";

			ratingVo.setShowAvgClearTime(clearTime);

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

			System.out.println(ratingVo); /////////// 여기까지 Vo완성 --> 이제 테이블에 데이터 쳐너쳐너

			double totalGamePoint = ratingVo.getTotalGame() * 1.01;
			double wonGamePoint = ratingVo.getWonGame() * 1.20;
			double noHintGamePoint = ratingVo.getNoHintGame() * 1.50;
			double failPoint = (ratingVo.getTotalGame() - ratingVo.getWonGame()) * 0.90;
			double totalRating = (totalGamePoint + wonGamePoint + noHintGamePoint - failPoint) * 100;

			int rankRating = (int) totalRating;

			ratingVo.setRankRating(rankRating);

			System.out.println("레이팅 추가 " + ratingVo);

			rankDao.updateModifyRating(ratingVo);

			count++;
		}

		System.out.println(count + "건 수정");

		return count;
	}
	
	public int addRankRating (String userId) {
		
		int userNo = recordDao.selectUserNo(userId);
		
		return rankDao.insertRankRating(userNo);
	}

}
