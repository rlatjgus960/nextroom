package com.nextroom.vo;

public class RatingVo {

	private String nickName;
	private int rank;
	private int userNo;
	private int avgClearTime;
	private String showAvgClearTime;
	private int avgHints;
	private int totalGame;
	private int noHintGame;
	private int wonGame;
	private int rankRating;
	private double winRate;
	private double noHintWinRate;
	private String gameHistory;

	public RatingVo() {
		super();
	}

	public RatingVo(String nickName, int rank, int userNo, int avgClearTime, String showAvgClearTime, int avgHints,
			int totalGame, int noHintGame, int wonGame, int rankRating, double winRate, double noHintWinRate,
			String gameHistory) {
		super();
		this.nickName = nickName;
		this.rank = rank;
		this.userNo = userNo;
		this.avgClearTime = avgClearTime;
		this.showAvgClearTime = showAvgClearTime;
		this.avgHints = avgHints;
		this.totalGame = totalGame;
		this.noHintGame = noHintGame;
		this.wonGame = wonGame;
		this.rankRating = rankRating;
		this.winRate = winRate;
		this.noHintWinRate = noHintWinRate;
		this.gameHistory = gameHistory;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
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

	public double getWinRate() {
		return winRate;
	}

	public void setWinRate(double winRate) {
		this.winRate = winRate;
	}

	public double getNoHintWinRate() {
		return noHintWinRate;
	}

	public void setNoHintWinRate(double noHintWinRate) {
		this.noHintWinRate = noHintWinRate;
	}

	public String getGameHistory() {
		return gameHistory;
	}

	public void setGameHistory(String gameHistory) {
		this.gameHistory = gameHistory;
	}

	@Override
	public String toString() {
		return "RatingVo [nickName=" + nickName + ", rank=" + rank + ", userNo=" + userNo + ", avgClearTime="
				+ avgClearTime + ", showAvgClearTime=" + showAvgClearTime + ", avgHints=" + avgHints + ", totalGame="
				+ totalGame + ", noHintGame=" + noHintGame + ", wonGame=" + wonGame + ", rankRating=" + rankRating
				+ ", winRate=" + winRate + ", noHintWinRate=" + noHintWinRate + ", gameHistory=" + gameHistory + "]";
	}

}
