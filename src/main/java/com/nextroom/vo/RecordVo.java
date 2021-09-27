package com.nextroom.vo;

public class RecordVo {
	
	private int recordNo;
	private int gameNo;
	private int userNo;
	private int recordTime;
	private int recordHints;
	private String recordClear;
	
	
	
	public RecordVo() {
		super();
	}
	
	
	public RecordVo(int recordNo, int gameNo, int userNo, int recordTime, int recordHints, String recordClear) {
		super();
		this.recordNo = recordNo;
		this.gameNo = gameNo;
		this.userNo = userNo;
		this.recordTime = recordTime;
		this.recordHints = recordHints;
		this.recordClear = recordClear;
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
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public String getRecordClear() {
		return recordClear;
	}
	public void setRecordClear(String recordClear) {
		this.recordClear = recordClear;
	}


	@Override
	public String toString() {
		return "RecordVo [recordNo=" + recordNo + ", gameNo=" + gameNo + ", userNo=" + userNo + ", recordTime="
				+ recordTime + ", recordHints=" + recordHints + ", recordClear=" + recordClear + "]";
	}
	
	

}
