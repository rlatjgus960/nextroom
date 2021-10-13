package com.nextroom.vo;

public class PartyVo {
	
	//필드
	private int partyNo;
	private int userNo;
	private String reserveDate;
	private String sidoDetail;
	private int cafeNo;
	private String cafeName;
	private int themeNo;
	private String themeName;
	private String themeTime;
	private int themeTimeNo;
	private String themeImg;
	private String reserveTime;
	private int reservePerson;
	private String content;
	private String partyState;
	private String userState;
	private int userCount;
	private String jenre;
	private int playTime;
	private String themeType;
	private int levels;
	
	/*PARTYREAD 랭킹 출력용 필드*/
	private int rank;
	private int avgClearTime;
	private String showAvgClearTime;
	private int avgHints;
	private int totalGame;
	private int noHintGame;
	private int wonGame;
	private int rankRating;
	private double winRate;
	private double noHintWinRate;
	
	/*PARTYREAD 유저정보 출력용 필드*/
	private String nickname;
	private String profile;
	
	//생성자
	public PartyVo() {
		super();
	}
	
	//파티승인리스트멤버용
	public PartyVo(int partyNo, int userNo, String userState) {
		super();
		this.partyNo = partyNo;
		this.userNo = userNo;
		this.userState = userState;
	}

	public PartyVo(int cafeNo, int themeNo) {
		super();
		this.cafeNo = cafeNo;
		this.themeNo = themeNo;
	}

	public PartyVo(int partyNo, int userNo, String reserveDate, String sidoDetail, int cafeNo, String cafeName,
			int themeNo, String themeName, String themeTime, String themeImg, String reserveTime, int reservePerson,
			String content, String partyState, String userState, int userCount) {
		super();
		this.partyNo = partyNo;
		this.userNo = userNo;
		this.reserveDate = reserveDate;
		this.sidoDetail = sidoDetail;
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeTime = themeTime;
		this.themeImg = themeImg;
		this.reserveTime = reserveTime;
		this.reservePerson = reservePerson;
		this.content = content;
		this.partyState = partyState;
		this.userState = userState;
		this.userCount = userCount;
	}

	public PartyVo(int partyNo, int userNo, String reserveDate, String sidoDetail, int cafeNo, String cafeName,
			int themeNo, String themeName, String themeTime, String themeImg, String reserveTime, int reservePerson,
			String content, String partyState, String userState, int userCount, String jenre, int playTime,
			String themeType, int levels) {
		super();
		this.partyNo = partyNo;
		this.userNo = userNo;
		this.reserveDate = reserveDate;
		this.sidoDetail = sidoDetail;
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeTime = themeTime;
		this.themeImg = themeImg;
		this.reserveTime = reserveTime;
		this.reservePerson = reservePerson;
		this.content = content;
		this.partyState = partyState;
		this.userState = userState;
		this.userCount = userCount;
		this.jenre = jenre;
		this.playTime = playTime;
		this.themeType = themeType;
		this.levels = levels;
	}
	
	public PartyVo(int partyNo, int userNo, String reserveDate, String sidoDetail, int cafeNo, String cafeName,
			int themeNo, String themeName, String themeTime, String themeImg, String reserveTime, int reservePerson,
			String content, String partyState, String userState, int userCount, String jenre, int playTime,
			String themeType, int levels, int rank, int avgClearTime, String showAvgClearTime, int avgHints,
			int totalGame, int noHintGame, int wonGame, int rankRating, double winRate, double noHintWinRate,
			String nickname, String profile) {
		super();
		this.partyNo = partyNo;
		this.userNo = userNo;
		this.reserveDate = reserveDate;
		this.sidoDetail = sidoDetail;
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeTime = themeTime;
		this.themeImg = themeImg;
		this.reserveTime = reserveTime;
		this.reservePerson = reservePerson;
		this.content = content;
		this.partyState = partyState;
		this.userState = userState;
		this.userCount = userCount;
		this.jenre = jenre;
		this.playTime = playTime;
		this.themeType = themeType;
		this.levels = levels;
		this.rank = rank;
		this.avgClearTime = avgClearTime;
		this.showAvgClearTime = showAvgClearTime;
		this.avgHints = avgHints;
		this.totalGame = totalGame;
		this.noHintGame = noHintGame;
		this.wonGame = wonGame;
		this.rankRating = rankRating;
		this.winRate = winRate;
		this.noHintWinRate = noHintWinRate;
		this.nickname = nickname;
		this.profile = profile;
	}

	public PartyVo(int partyNo, int userNo, String reserveDate, String sidoDetail, int cafeNo, String cafeName,
			int themeNo, String themeName, String themeTime, int themeTimeNo, String themeImg, String reserveTime,
			int reservePerson, String content, String partyState, String userState, int userCount, String jenre,
			int playTime, String themeType, int levels, int rank, int avgClearTime, String showAvgClearTime,
			int avgHints, int totalGame, int noHintGame, int wonGame, int rankRating, double winRate,
			double noHintWinRate, String nickname, String profile) {
		super();
		this.partyNo = partyNo;
		this.userNo = userNo;
		this.reserveDate = reserveDate;
		this.sidoDetail = sidoDetail;
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeTime = themeTime;
		this.themeTimeNo = themeTimeNo;
		this.themeImg = themeImg;
		this.reserveTime = reserveTime;
		this.reservePerson = reservePerson;
		this.content = content;
		this.partyState = partyState;
		this.userState = userState;
		this.userCount = userCount;
		this.jenre = jenre;
		this.playTime = playTime;
		this.themeType = themeType;
		this.levels = levels;
		this.rank = rank;
		this.avgClearTime = avgClearTime;
		this.showAvgClearTime = showAvgClearTime;
		this.avgHints = avgHints;
		this.totalGame = totalGame;
		this.noHintGame = noHintGame;
		this.wonGame = wonGame;
		this.rankRating = rankRating;
		this.winRate = winRate;
		this.noHintWinRate = noHintWinRate;
		this.nickname = nickname;
		this.profile = profile;
	}

	//메소드(게터세터)
	public int getPartyNo() {
		return partyNo;
	}


	public void setPartyNo(int partyNo) {
		this.partyNo = partyNo;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public String getSidoDetail() {
		return sidoDetail;
	}

	public void setSidoDetail(String sidoDetail) {
		this.sidoDetail = sidoDetail;
	}

	public int getCafeNo() {
		return cafeNo;
	}
	
	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}
	
	public int getThemeNo() {
		return themeNo;
	}
	
	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}
	
	public String getCafeName() {
		return cafeName;
	}

	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	
	public String getThemeTime() {
		return themeTime;
	}

	public void setThemeTime(String themeTime) {
		this.themeTime = themeTime;
	}

	public String getThemeImg() {
		return themeImg;
	}

	public void setThemeImg(String themeImg) {
		this.themeImg = themeImg;
	}

	public String getReserveTime() {
		return reserveTime;
	}

	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}

	public int getReservePerson() {
		return reservePerson;
	}

	public void setReservePerson(int reservePerson) {
		this.reservePerson = reservePerson;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPartyState() {
		return partyState;
	}

	public void setPartyState(String partyState) {
		this.partyState = partyState;
	}
	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserState() {
		return userState;
	}

	public void setUserState(String userState) {
		this.userState = userState;
	}

	public int getUserCount() {
		return userCount;
	}

	public void setUserCount(int userCount) {
		this.userCount = userCount;
	}

	
	public String getJenre() {
		return jenre;
	}

	public void setJenre(String jenre) {
		this.jenre = jenre;
	}

	public int getPlayTime() {
		return playTime;
	}

	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}

	public String getThemeType() {
		return themeType;
	}

	public void setThemeType(String themeType) {
		this.themeType = themeType;
	}

	public int getLevels() {
		return levels;
	}

	public void setLevels(int levels) {
		this.levels = levels;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
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

	public String getShowAvgClearTime() {
		return showAvgClearTime;
	}

	public void setShowAvgClearTime(String showAvgClearTime) {
		this.showAvgClearTime = showAvgClearTime;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public int getAvgClearTime() {
		return avgClearTime;
	}

	public void setAvgClearTime(int avgClearTime) {
		this.avgClearTime = avgClearTime;
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
	
	public int getThemeTimeNo() {
		return themeTimeNo;
	}

	public void setThemeTimeNo(int themeTimeNo) {
		this.themeTimeNo = themeTimeNo;
	}

	
	//메소드(일반)
	@Override
	public String toString() {
		return "PartyVo [partyNo=" + partyNo + ", userNo=" + userNo + ", reserveDate=" + reserveDate + ", sidoDetail="
				+ sidoDetail + ", cafeNo=" + cafeNo + ", cafeName=" + cafeName + ", themeNo=" + themeNo + ", themeName="
				+ themeName + ", themeTime=" + themeTime + ", themeTimeNo=" + themeTimeNo + ", themeImg=" + themeImg
				+ ", reserveTime=" + reserveTime + ", reservePerson=" + reservePerson + ", content=" + content
				+ ", partyState=" + partyState + ", userState=" + userState + ", userCount=" + userCount + ", jenre="
				+ jenre + ", playTime=" + playTime + ", themeType=" + themeType + ", levels=" + levels + ", rank="
				+ rank + ", avgClearTime=" + avgClearTime + ", showAvgClearTime=" + showAvgClearTime + ", avgHints="
				+ avgHints + ", totalGame=" + totalGame + ", noHintGame=" + noHintGame + ", wonGame=" + wonGame
				+ ", rankRating=" + rankRating + ", winRate=" + winRate + ", noHintWinRate=" + noHintWinRate
				+ ", nickname=" + nickname + ", profile=" + profile + "]";
	}
	
	
	
	
	
}
