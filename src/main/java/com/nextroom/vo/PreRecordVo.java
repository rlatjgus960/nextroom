package com.nextroom.vo;

public class PreRecordVo {

	private int recordNo;
	private int gameNo;
	private String themeName;
	private String gameState;
	private String regDate;
	private int themeNo;
	private int totalPerson;
	private String reserveName;
	private String reserveTime;
	private int recordTime;
	private String clearTime;
	private int recordHints;

	public PreRecordVo() {
		super();
	}

	public PreRecordVo(int recordNo, String clearTime, int recordHints) {
		super();
		this.recordNo = recordNo;
		this.clearTime = clearTime;
		this.recordHints = recordHints;
	}

	public PreRecordVo(int recordNo, int gameNo, String themeName, String gameState, String regDate, int themeNo,
			int totalPerson, String reserveName, String reserveTime, int recordTime, String clearTime,
			int recordHints) {
		super();
		this.recordNo = recordNo;
		this.gameNo = gameNo;
		this.themeName = themeName;
		this.gameState = gameState;
		this.regDate = regDate;
		this.themeNo = themeNo;
		this.totalPerson = totalPerson;
		this.reserveName = reserveName;
		this.reserveTime = reserveTime;
		this.recordTime = recordTime;
		this.clearTime = clearTime;
		this.recordHints = recordHints;
	}

	public int getRecordNo() {
		return recordNo;
	}

	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
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

	public int getRecordTime() {
		return recordTime;
	}

	public void setRecordTime(int recordTime) {
		this.recordTime = recordTime;
	}

	public String getClearTime() {
		return clearTime;
	}

	public void setClearTime(String clearTime) {
		this.clearTime = clearTime;
	}

	public int getRecordHints() {
		return recordHints;
	}

	public void setRecordHints(int recordHints) {
		this.recordHints = recordHints;
	}

	@Override
	public String toString() {
		return "PreRecordVo [recordNo=" + recordNo + ", gameNo=" + gameNo + ", themeName=" + themeName + ", gameState="
				+ gameState + ", regDate=" + regDate + ", themeNo=" + themeNo + ", totalPerson=" + totalPerson
				+ ", reserveName=" + reserveName + ", reserveTime=" + reserveTime + ", recordTime=" + recordTime
				+ ", clearTime=" + clearTime + ", recordHints=" + recordHints + "]";
	}

}
