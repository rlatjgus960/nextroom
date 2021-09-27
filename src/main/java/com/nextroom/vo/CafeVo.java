package com.nextroom.vo;

public class CafeVo {

	private int cafeNo;
	private int userNo;
	private String cafeName;
	private String cafeHp;
	private String openTime;
	private String closeTime;
	private String cafeIntro;
	private String url;
	private String cafeImg;
	private String address;
	private String sido;
	private String sidoDetail;

	public CafeVo() {
		super();
	}

	public CafeVo(int cafeNo, int userNo, String cafeName, String cafeHp, String openTime, String closeTime,
			String cafeIntro, String url, String cafeImg, String address, String sido, String sidoDetail) {
		super();
		this.cafeNo = cafeNo;
		this.userNo = userNo;
		this.cafeName = cafeName;
		this.cafeHp = cafeHp;
		this.openTime = openTime;
		this.closeTime = closeTime;
		this.cafeIntro = cafeIntro;
		this.url = url;
		this.cafeImg = cafeImg;
		this.address = address;
		this.sido = sido;
		this.sidoDetail = sidoDetail;
	}

	public int getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getCafeName() {
		return cafeName;
	}

	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}

	public String getCafeHp() {
		return cafeHp;
	}

	public void setCafeHp(String cafeHp) {
		this.cafeHp = cafeHp;
	}

	public String getOpenTime() {
		return openTime;
	}

	public void setOpenTime(String openTime) {
		this.openTime = openTime;
	}

	public String getCloseTime() {
		return closeTime;
	}

	public void setCloseTime(String closeTime) {
		this.closeTime = closeTime;
	}

	public String getCafeIntro() {
		return cafeIntro;
	}

	public void setCafeIntro(String cafeIntro) {
		this.cafeIntro = cafeIntro;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getCafeImg() {
		return cafeImg;
	}

	public void setCafeImg(String cafeImg) {
		this.cafeImg = cafeImg;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getSidoDetail() {
		return sidoDetail;
	}

	public void setSidoDetail(String sidoDetail) {
		this.sidoDetail = sidoDetail;
	}

	@Override
	public String toString() {
		return "CafeVo [cafeNo=" + cafeNo + ", userNo=" + userNo + ", cafeName=" + cafeName + ", cafeHp=" + cafeHp
				+ ", openTime=" + openTime + ", closeTime=" + closeTime + ", cafeIntro=" + cafeIntro + ", url=" + url
				+ ", cafeImg=" + cafeImg + ", address=" + address + ", sido=" + sido + ", sidoDetail=" + sidoDetail
				+ "]";
	}

}
