package com.nextroom.vo;

public class ReadRecordVo {

	private int recordNo;
	private int gameNo;
	private int themeNo;
	private String themeName;
	private String regDate;
	private int recordTime;
	private int recordHints;
	private int totalPerson;
	private String reserveName;

	public ReadRecordVo() {
		super();
	}

	public ReadRecordVo(int recordNo, int gameNo, int themeNo, String themeName, String regDate, int recordTime,
			int recordHints, int totalPerson, String reserveName) {
		super();
		this.recordNo = recordNo;
		this.gameNo = gameNo;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.regDate = regDate;
		this.recordTime = recordTime;
		this.recordHints = recordHints;
		this.totalPerson = totalPerson;
		this.reserveName = reserveName;
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

	public int getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getRecordTime() {
		return recordTime;
	}

	public void setRecordTime(int recordTime) {
		this.recordTime = recordTime;
	}

	public int getRecordHints() {
		return recordHints;
	}

	public void setRecordHints(int recordHints) {
		this.recordHints = recordHints;
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

	@Override
	public String toString() {
		return "ReadRecordVo [recordNo=" + recordNo + ", gameNo=" + gameNo + ", themeNo=" + themeNo + ", themeName="
				+ themeName + ", regDate=" + regDate + ", recordTime=" + recordTime + ", recordHints=" + recordHints
				+ ", totalPerson=" + totalPerson + ", reserveName=" + reserveName + "]";
	}

}
