package com.nextroom.vo;

import java.util.List;

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
	private String postCode;
	private String address;
	private String addressDetail;
	private String printAddress;
	private String sido;
	private String sigungu;
	private String sidoDetail;
	private String latitude;
	private String longitude;

	// 인테리어 테이블
	private List<MultipartFile> interiorImg;
	private List<String> inteList;

	// 테마 테이블
	private int themeNo;
	private String themeName;
	private MultipartFile themeImgFile;
	private String themeImg;
	private String jenre;
	private int levels;
	private String themeType;
	private int playTime;
	private String activity;
	private String themeIntro;
	private String pRecommendMin;
	private String pRecommendMax;
	private int pMin;
	private int pMax;

	// 테마가격 테이블
	private List<Integer> headCount;
	private List<Integer> price;

	// 테마 시간 테이블
	// private int themeTimeNo;
	// private String themeTime;
	private List<String> themeStartTime;

	public CafeVo() {
		super();
	}

	public CafeVo(int cafeNo, int userNo, String cafeName, String cafeHp, String openTime, String closeTime,
			String cafeIntro, String url, MultipartFile cafeImgFile, String cafeImg, String postCode, String address,
			String addressDetail, String printAddress, String sido, String sigungu, String sidoDetail, String latitude,
			String longitude, List<MultipartFile> interiorImg, List<String> inteList, int themeNo, String themeName,
			MultipartFile themeImgFile, String themeImg, String jenre, int levels, String themeType, int playTime,
			String activity, String themeIntro, String pRecommendMin, String pRecommendMax, int pMin, int pMax,
			List<Integer> headCount, List<Integer> price, List<String> themeStartTime) {
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
		this.postCode = postCode;
		this.address = address;
		this.addressDetail = addressDetail;
		this.printAddress = printAddress;
		this.sido = sido;
		this.sigungu = sigungu;
		this.sidoDetail = sidoDetail;
		this.latitude = latitude;
		this.longitude = longitude;
		this.interiorImg = interiorImg;
		this.inteList = inteList;
		this.themeNo = themeNo;
		this.themeName = themeName;
		this.themeImgFile = themeImgFile;
		this.themeImg = themeImg;
		this.jenre = jenre;
		this.levels = levels;
		this.themeType = themeType;
		this.playTime = playTime;
		this.activity = activity;
		this.themeIntro = themeIntro;
		this.pRecommendMin = pRecommendMin;
		this.pRecommendMax = pRecommendMax;
		this.pMin = pMin;
		this.pMax = pMax;
		this.headCount = headCount;
		this.price = price;
		this.themeStartTime = themeStartTime;
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

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
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

	public String getSigungu() {
		return sigungu;
	}

	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}

	public String getSidoDetail() {
		return sidoDetail;
	}

	public void setSidoDetail(String sidoDetail) {
		this.sidoDetail = sidoDetail;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public List<MultipartFile> getInteriorImg() {
		return interiorImg;
	}

	public void setInteriorImg(List<MultipartFile> interiorImg) {
		this.interiorImg = interiorImg;
	}

	public List<String> getInteList() {
		return inteList;
	}

	public void setInteList(List<String> inteList) {
		this.inteList = inteList;
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

	public MultipartFile getThemeImgFile() {
		return themeImgFile;
	}

	public void setThemeImgFile(MultipartFile themeImgFile) {
		this.themeImgFile = themeImgFile;
	}

	public String getThemeImg() {
		return themeImg;
	}

	public void setThemeImg(String themeImg) {
		this.themeImg = themeImg;
	}

	public String getJenre() {
		return jenre;
	}

	public void setJenre(String jenre) {
		this.jenre = jenre;
	}

	public int getLevels() {
		return levels;
	}

	public void setLevels(int levels) {
		this.levels = levels;
	}

	public String getThemeType() {
		return themeType;
	}

	public void setThemeType(String themeType) {
		this.themeType = themeType;
	}

	public int getPlayTime() {
		return playTime;
	}

	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}

	public String getActivity() {
		return activity;
	}

	public void setActivity(String activity) {
		this.activity = activity;
	}

	public String getThemeIntro() {
		return themeIntro;
	}

	public void setThemeIntro(String themeIntro) {
		this.themeIntro = themeIntro;
	}

	public String getpRecommendMin() {
		return pRecommendMin;
	}

	public void setpRecommendMin(String pRecommendMin) {
		this.pRecommendMin = pRecommendMin;
	}

	public String getpRecommendMax() {
		return pRecommendMax;
	}

	public void setpRecommendMax(String pRecommendMax) {
		this.pRecommendMax = pRecommendMax;
	}

	public int getpMin() {
		return pMin;
	}

	public void setpMin(int pMin) {
		this.pMin = pMin;
	}

	public int getpMax() {
		return pMax;
	}

	public void setpMax(int pMax) {
		this.pMax = pMax;
	}

	public List<Integer> getHeadCount() {
		return headCount;
	}

	public void setHeadCount(List<Integer> headCount) {
		this.headCount = headCount;
	}

	public List<Integer> getPrice() {
		return price;
	}

	public void setPrice(List<Integer> price) {
		this.price = price;
	}

	public List<String> getThemeStartTime() {
		return themeStartTime;
	}

	public void setThemeStartTime(List<String> themeStartTime) {
		this.themeStartTime = themeStartTime;
	}

	@Override
	public String toString() {
		return "CafeVo [cafeNo=" + cafeNo + ", userNo=" + userNo + ", cafeName=" + cafeName + ", cafeHp=" + cafeHp
				+ ", openTime=" + openTime + ", closeTime=" + closeTime + ", cafeIntro=" + cafeIntro + ", url=" + url
				+ ", cafeImgFile=" + cafeImgFile + ", cafeImg=" + cafeImg + ", postCode=" + postCode + ", address="
				+ address + ", addressDetail=" + addressDetail + ", printAddress=" + printAddress + ", sido=" + sido
				+ ", sigungu=" + sigungu + ", sidoDetail=" + sidoDetail + ", latitude=" + latitude + ", longitude="
				+ longitude + ", interiorImg=" + interiorImg + ", inteList=" + inteList + ", themeNo=" + themeNo
				+ ", themeName=" + themeName + ", themeImgFile=" + themeImgFile + ", themeImg=" + themeImg + ", jenre="
				+ jenre + ", levels=" + levels + ", themeType=" + themeType + ", playTime=" + playTime + ", activity="
				+ activity + ", themeIntro=" + themeIntro + ", pRecommendMin=" + pRecommendMin + ", pRecommendMax="
				+ pRecommendMax + ", pMin=" + pMin + ", pMax=" + pMax + ", headCount=" + headCount + ", price=" + price
				+ ", themeStartTime=" + themeStartTime + "]";
	}

}
