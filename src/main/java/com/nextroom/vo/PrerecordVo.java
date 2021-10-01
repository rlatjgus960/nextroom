package com.nextroom.vo;

public class PrerecordVo {

	private int gameNo;
	private String themeName;
	private String gameState;
	private String regDate;
	private int themeNo;
	private int totalPerson;
	private String reserveName;
	private String reserveTime;

	public PrerecordVo() {
		super();
	}

	public PrerecordVo(int gameNo, String themeName, String gameState, String regDate, int themeNo, int totalPerson,
			String reserveName, String reserveTime) {
		super();
		this.gameNo = gameNo;
		this.themeName = themeName;
		this.gameState = gameState;
		this.regDate = regDate;
		this.themeNo = themeNo;
		this.totalPerson = totalPerson;
		this.reserveName = reserveName;
		this.reserveTime = reserveTime;
	}

	public int getGameNo() {
		return gameNo;
	}

	public void setGameNo(int gameNo) {
		this.gameNo = gameNo;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}

	public String getGameState() {
		return gameState;
	}

	public void setGameState(String gameState) {
		this.gameState = gameState;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}

	public int getTotalPerson() {
		return totalPerson;
	}

	public void setTotalPerson(int totalPerson) {
		this.totalPerson = totalPerson;
	}

	public String getReserveName() {
		return reserveName;
	}

	public void setReserveName(String reserveName) {
		this.reserveName = reserveName;
	}

	public String getReserveTime() {
		return reserveTime;
	}

	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}

	@Override
	public String toString() {
		return "PrerecordVo [gameNo=" + gameNo + ", themeName=" + themeName + ", gameState=" + gameState + ", regDate="
				+ regDate + ", themeNo=" + themeNo + ", totalPerson=" + totalPerson + ", reserveName=" + reserveName
				+ ", reserveTime=" + reserveTime + "]";
	}

}
