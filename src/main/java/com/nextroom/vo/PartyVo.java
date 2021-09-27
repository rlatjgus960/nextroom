package com.nextroom.vo;

public class PartyVo {
	
	//필드
	private int partyNo;
	private String reserveDate;
	private String sido;
	private int cafeNo;
	private String cafeName;
	private int themeNo;
	private String themeName;
	private String themeImg;
	private String reserveTime;
	private int reservePerson;
	private String content;
	private String partyState;
	
	
	//생성자
	public PartyVo() {
		super();
	}
	
	public PartyVo(int partyNo, String reserveDate, String sido, int cafeNo, String cafeName, int themeNo,
			String themeName, String themeImg, String reserveTime, int reservePerson, String content,
			String partyState) {
		super();
		this.partyNo = partyNo;
		this.reserveDate = reserveDate;
		this.sido = sido;
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeImg = themeImg;
		this.reserveTime = reserveTime;
		this.reservePerson = reservePerson;
		this.content = content;
		this.partyState = partyState;
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

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
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

		
	//메소드(일반)
	@Override
	public String toString() {
		return "PartyVo [partyNo=" + partyNo + ", reserveDate=" + reserveDate + ", sido=" + sido + ", cafeNo=" + cafeNo
				+ ", cafeName=" + cafeName + ", themeNo=" + themeNo + ", themeName=" + themeName + ", themeImg="
				+ themeImg + ", reserveTime=" + reserveTime + ", reservePerson=" + reservePerson + ", content="
				+ content + ", partyState=" + partyState + "]";
	}
	
	
	
	
	
	
	
}
