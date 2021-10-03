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


	//메소드(일반)
	@Override
	public String toString() {
		return "PartyVo [partyNo=" + partyNo + ", userNo=" + userNo + ", reserveDate=" + reserveDate + ", sidoDetail="
				+ sidoDetail + ", cafeNo=" + cafeNo + ", cafeName=" + cafeName + ", themeNo=" + themeNo + ", themeName="
				+ themeName + ", themeTime=" + themeTime + ", themeImg=" + themeImg + ", reserveTime=" + reserveTime
				+ ", reservePerson=" + reservePerson + ", content=" + content + ", partyState=" + partyState
				+ ", userState=" + userState + ", userCount=" + userCount + ", jenre=" + jenre + ", playTime="
				+ playTime + ", themeType=" + themeType + ", levels=" + levels + "]";
	}
	
	
	
	
}
