package com.nextroom.vo;

public class TimeVo {
	private int themeNo;
	private int themeTimeNo;
	private String themeTime;

	public TimeVo() {
		super();
	}

	public TimeVo(int themeNo, int themeTimeNo, String themeTime) {
		super();
		this.themeNo = themeNo;
		this.themeTimeNo = themeTimeNo;
		this.themeTime = themeTime;
	}

	public int getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}

	public int getThemeTimeNo() {
		return themeTimeNo;
	}

	public void setThemeTimeNo(int themeTimeNo) {
		this.themeTimeNo = themeTimeNo;
	}

	public String getThemeTime() {
		return themeTime;
	}

	public void setThemeTime(String themeTime) {
		this.themeTime = themeTime;
	}

	@Override
	public String toString() {
		return "TimeVo [themeNo=" + themeNo + ", themeTimeNo=" + themeTimeNo + ", themeTime=" + themeTime + "]";
	}

}
