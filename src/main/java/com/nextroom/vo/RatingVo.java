package com.nextroom.vo;

public class RatingVo {

	private int userNo;
	private int avgClearTime;
	private String showAvgClearTime;
	private int avgHints;
	private int totalGame;
	private int noHintGame;
	private int wonGame;
	private int rankRating;

	public RatingVo() {
		super();
	}
	
	

	public RatingVo(int userNo) {
		super();
		this.userNo = userNo;
	}



	public RatingVo(int userNo, int avgClearTime, String showAvgClearTime, int avgHints, int totalGame, int noHintGame,
			int wonGame, int rankRating) {
		super();
		this.userNo = userNo;
		this.avgClearTime = avgClearTime;
		this.showAvgClearTime = showAvgClearTime;
		this.avgHints = avgHints;
		this.totalGame = totalGame;
		this.noHintGame = noHintGame;
		this.wonGame = wonGame;
		this.rankRating = rankRating;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getAvgClearTime() {
		return avgClearTime;
	}

	public void setAvgClearTime(int avgClearTime) {
		this.avgClearTime = avgClearTime;
	}

	public String getShowAvgClearTime() {
		return showAvgClearTime;
	}

	public void setShowAvgClearTime(String showAvgClearTime) {
		this.showAvgClearTime = showAvgClearTime;
	}

	public int getAvgHints() {
		return avgHints;
	}

	public void setAvgHints(int avgHints) {
		this.avgHints = avgHints;
	}

	public int getTotalGame() {
		return totalGame;
	}

	public void setTotalGame(int totalGame) {
		this.totalGame = totalGame;
	}

	public int getNoHintGame() {
		return noHintGame;
	}

	public void setNoHintGame(int noHintGame) {
		this.noHintGame = noHintGame;
	}

	public int getWonGame() {
		return wonGame;
	}

	public void setWonGame(int wonGame) {
		this.wonGame = wonGame;
	}

	public int getRankRating() {
		return rankRating;
	}

	public void setRankRating(int rankRating) {
		this.rankRating = rankRating;
	}

	@Override
	public String toString() {
		return "RatingVo [userNo=" + userNo + ", avgClearTime=" + avgClearTime + ", showAvgClearTime="
				+ showAvgClearTime + ", avgHints=" + avgHints + ", totalGame=" + totalGame + ", noHintGame="
				+ noHintGame + ", wonGame=" + wonGame + ", rankRating=" + rankRating + "]";
	}

}
