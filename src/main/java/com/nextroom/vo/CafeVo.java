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
	private MultipartFile cafeImg;
	private MultipartFile interiorImg;
	private String cafeImgPath;
	private String interiorImgPath;
	private String address;
	private String addressDetail;
	private String sido;
	private String sidoDetail;

	public CafeVo() {
		super();
	}

	public CafeVo(int cafeNo, int userNo, String cafeName, String cafeHp, String openTime, String closeTime,
			String cafeIntro, String url, MultipartFile cafeImg, MultipartFile interiorImg, String cafeImgPath,
			String interiorImgPath, String address, String addressDetail, String sido, String sidoDetail) {
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
		this.interiorImg = interiorImg;
		this.cafeImgPath = cafeImgPath;
		this.interiorImgPath = interiorImgPath;
		this.address = address;
		this.addressDetail = addressDetail;
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

	public MultipartFile getCafeImg() {
		return cafeImg;
	}

	public void setCafeImg(MultipartFile cafeImg) {
		this.cafeImg = cafeImg;
	}

	public MultipartFile getInteriorImg() {
		return interiorImg;
	}

	public void setInteriorImg(MultipartFile interiorImg) {
		this.interiorImg = interiorImg;
	}

	public String getCafeImgPath() {
		return cafeImgPath;
	}

	public void setCafeImgPath(String cafeImgPath) {
		this.cafeImgPath = cafeImgPath;
	}

	public String getInteriorImgPath() {
		return interiorImgPath;
	}

	public void setInteriorImgPath(String interiorImgPath) {
		this.interiorImgPath = interiorImgPath;
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
				+ ", cafeImg=" + cafeImg + ", interiorImg=" + interiorImg + ", cafeImgPath=" + cafeImgPath
				+ ", interiorImgPath=" + interiorImgPath + ", address=" + address + ", addressDetail=" + addressDetail
				+ ", sido=" + sido + ", sidoDetail=" + sidoDetail + "]";
	}

}
