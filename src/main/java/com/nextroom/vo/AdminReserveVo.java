package com.nextroom.vo;

public class AdminReserveVo {

	private int userNo;
	private int cafeNo;
	private int themeNo;
	private String themeName;
	private int themeTimeNo;
	private String themeTime;
	private int reserveDateNo;
	private String reserveDate;
	private int reserveTimeNo;
	private String reserveTime;
	private int reserveState;
	
	
	public AdminReserveVo() {
		super();
	}

	public AdminReserveVo(int userNo, int cafeNo, int themeNo, String themeName, int themeTimeNo, String themeTime,
			int reserveDateNo, String reserveDate, int reserveTimeNo, String reserveTime, int reserveState) {
		super();
		this.userNo = userNo;
		this.cafeNo = cafeNo;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeTimeNo = themeTimeNo;
		this.themeTime = themeTime;
		this.reserveDateNo = reserveDateNo;
		this.reserveDate = reserveDate;
		this.reserveTimeNo = reserveTimeNo;
		this.reserveTime = reserveTime;
		this.reserveState = reserveState;
	}



	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
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

	public int getReserveDateNo() {
		return reserveDateNo;
	}

	public void setReserveDateNo(int reserveDateNo) {
		this.reserveDateNo = reserveDateNo;
	}

	public String getReserveDate() {
		return reserveDate;
	}

	public void setReserveDate(String reserveDate) {
		this.reserveDate = reserveDate;
	}

	public int getReserveTimeNo() {
		return reserveTimeNo;
	}

	public void setReserveTimeNo(int reserveTimeNo) {
		this.reserveTimeNo = reserveTimeNo;
	}

	public String getReserveTime() {
		return reserveTime;
	}

	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}

	public int getReserveState() {
		return reserveState;
	}

	public void setReserveState(int reserveState) {
		this.reserveState = reserveState;
	}

	@Override
	public String toString() {
		return "AdminReserveVo [userNo=" + userNo + ", cafeNo=" + cafeNo + ", themeNo=" + themeNo + ", themeName="
				+ themeName + ", themeTimeNo=" + themeTimeNo + ", themeTime=" + themeTime + ", reserveDateNo="
				+ reserveDateNo + ", reserveDate=" + reserveDate + ", reserveTimeNo=" + reserveTimeNo + ", reserveTime="
				+ reserveTime + ", reserveState=" + reserveState + "]";
	}

	
	
	
	
	
}
