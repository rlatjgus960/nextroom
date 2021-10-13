package com.nextroom.vo;

public class ThemeRankVo {

	private String themeName;
	private String themeImgPath;
	private String themeIntro;
	private double avgRating;
	private double avgDifficulty;
	private int review;
	private String cafeName;
	private int rank;

	public ThemeRankVo() {
		super();
	}

	public ThemeRankVo(int rank) {
		super();
		this.rank = rank;
	}

	public ThemeRankVo(String themeName, String themeImgPath, String themeIntro, double avgRating, double avgDifficulty,
			int review, String cafeName, int rank) {
		super();
		this.themeName = themeName;
		this.themeImgPath = themeImgPath;
		this.themeIntro = themeIntro;
		this.avgRating = avgRating;
		this.avgDifficulty = avgDifficulty;
		this.review = review;
		this.cafeName = cafeName;
		this.rank = rank;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}

	public String getThemeImgPath() {
		return themeImgPath;
	}

	public void setThemeImgPath(String themeImgPath) {
		this.themeImgPath = themeImgPath;
	}

	public String getThemeIntro() {
		return themeIntro;
	}

	public void setThemeIntro(String themeIntro) {
		this.themeIntro = themeIntro;
	}

	public double getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(double avgRating) {
		this.avgRating = avgRating;
	}

	public double getAvgDifficulty() {
		return avgDifficulty;
	}

	public void setAvgDifficulty(double avgDifficulty) {
		this.avgDifficulty = avgDifficulty;
	}

	public int getReview() {
		return review;
	}

	public void setReview(int review) {
		this.review = review;
	}

	public String getCafeName() {
		return cafeName;
	}

	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "ThemeRankVo [themeName=" + themeName + ", themeImgPath=" + themeImgPath + ", themeIntro=" + themeIntro
				+ ", avgRating=" + avgRating + ", avgDifficulty=" + avgDifficulty + ", review=" + review + ", cafeName="
				+ cafeName + ", rank=" + rank + "]";
	}

}
