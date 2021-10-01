package com.nextroom.vo;

import org.springframework.web.multipart.MultipartFile;

public class CafeVo {

	private int cafeNo;
	private int userNo;
	private String cafeName;
	private String cafeHp;
	private String openTime;
	private String closeTime;
	private String cafeIntro;
	private String url;
	private MultipartFile cafeImgFile;
	private String cafeImg;
	private String address;
	private String addressDetail;
	private String printAddress;
	private String sido;
	private String sidoDetail;

	public CafeVo() {
		super();
	}

	public CafeVo(int cafeNo, int userNo, String cafeName, String cafeHp, String openTime, String closeTime,
			String cafeIntro, String url, MultipartFile cafeImgFile, String cafeImg, String address,
			String addressDetail, String printAddress, String sido, String sidoDetail) {
		super();
		this.cafeNo = cafeNo;
		this.userNo = userNo;
		this.cafeName = cafeName;
		this.cafeHp = cafeHp;
		this.openTime = openTime;
		this.closeTime = closeTime;
		this.cafeIntro = cafeIntro;
		this.url = url;
		this.cafeImgFile = cafeImgFile;
		this.cafeImg = cafeImg;
		this.address = address;
		this.addressDetail = addressDetail;
		this.printAddress = printAddress;
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

	public MultipartFile getCafeImgFile() {
		return cafeImgFile;
	}

	public void setCafeImgFile(MultipartFile cafeImgFile) {
		this.cafeImgFile = cafeImgFile;
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

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getPrintAddress() {
		return printAddress;
	}

	public void setPrintAddress(String printAddress) {
		this.printAddress = printAddress;
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
				+ ", cafeImgFile=" + cafeImgFile + ", cafeImg=" + cafeImg + ", address=" + address + ", addressDetail="
				+ addressDetail + ", printAddress=" + printAddress + ", sido=" + sido + ", sidoDetail=" + sidoDetail
				+ "]";
	}

}
