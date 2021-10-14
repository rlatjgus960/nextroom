package com.nextroom.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ThemeVo {

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
	private List<String> themeStartTime;

	// 카페 테마 전체 최대최소인원
	private int minPMin;
	private int maxPMax;

	// 테마 상세 출력용 리뷰 정보
	private int reviewCount;
	private int aRating;
	private int aFeelLevel;

	public ThemeVo() {
		super();
	}

	public ThemeVo(int themeNo, String themeName, MultipartFile themeImgFile, String themeImg, String jenre, int levels,
			String themeType, int playTime, String activity, String themeIntro, String pRecommendMin,
			String pRecommendMax, int pMin, int pMax, List<Integer> headCount, List<Integer> price,
			List<String> themeStartTime, int minPMin, int maxPMax, int reviewCount, int aRating, int aFeelLevel) {
		super();
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
		this.minPMin = minPMin;
		this.maxPMax = maxPMax;
		this.reviewCount = reviewCount;
		this.aRating = aRating;
		this.aFeelLevel = aFeelLevel;
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

	public int getMinPMin() {
		return minPMin;
	}

	public void setMinPMin(int minPMin) {
		this.minPMin = minPMin;
	}

	public int getMaxPMax() {
		return maxPMax;
	}

	public void setMaxPMax(int maxPMax) {
		this.maxPMax = maxPMax;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	public int getaRating() {
		return aRating;
	}

	public void setaRating(int aRating) {
		this.aRating = aRating;
	}

	public int getaFeelLevel() {
		return aFeelLevel;
	}

	public void setaFeelLevel(int aFeelLevel) {
		this.aFeelLevel = aFeelLevel;
	}

	@Override
	public String toString() {
		return "ThemeVo [themeNo=" + themeNo + ", themeName=" + themeName + ", themeImgFile=" + themeImgFile
				+ ", themeImg=" + themeImg + ", jenre=" + jenre + ", levels=" + levels + ", themeType=" + themeType
				+ ", playTime=" + playTime + ", activity=" + activity + ", themeIntro=" + themeIntro
				+ ", pRecommendMin=" + pRecommendMin + ", pRecommendMax=" + pRecommendMax + ", pMin=" + pMin + ", pMax="
				+ pMax + ", headCount=" + headCount + ", price=" + price + ", themeStartTime=" + themeStartTime
				+ ", minPMin=" + minPMin + ", maxPMax=" + maxPMax + ", reviewCount=" + reviewCount + ", aRating="
				+ aRating + ", aFeelLevel=" + aFeelLevel + "]";
	}

}
