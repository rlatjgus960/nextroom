package com.nextroom.vo;

public class UserHistoryVo {

	private String regDate;
	private String themeName;
	private int recordTime;
	private String clearTime;
	private int recordHints;
	private int totalPerson;
	private String recordClear;

	public UserHistoryVo() {
		super();
	}

	public UserHistoryVo(String regDate, String themeName, int recordTime, String clearTime, int recordHints,
			int totalPerson, String recordClear) {
		super();
		this.regDate = regDate;
		this.themeName = themeName;
		this.recordTime = recordTime;
		this.clearTime = clearTime;
		this.recordHints = recordHints;
		this.totalPerson = totalPerson;
		this.recordClear = recordClear;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
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

	public int getTotalPerson() {
		return totalPerson;
	}

	public void setTotalPerson(int totalPerson) {
		this.totalPerson = totalPerson;
	}

	public String getRecordClear() {
		return recordClear;
	}

	public void setRecordClear(String recordClear) {
		this.recordClear = recordClear;
	}

	@Override
	public String toString() {
		return "UserHistoryVo [regDate=" + regDate + ", themeName=" + themeName + ", recordTime=" + recordTime
				+ ", clearTime=" + clearTime + ", recordHints=" + recordHints + ", totalPerson=" + totalPerson
				+ ", recordClear=" + recordClear + "]";
	}

}
