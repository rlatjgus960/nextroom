package com.nextroom.vo;

public class PriceVo {
	private String themeName;
	private int playTime;
	private int themeNo;
	private int headCount;
	private int price;

	public PriceVo() {
		super();
	}

	public PriceVo(String themeName, int playTime, int themeNo, int headCount, int price) {
		super();
		this.themeName = themeName;
		this.playTime = playTime;
		this.themeNo = themeNo;
		this.headCount = headCount;
		this.price = price;
	}

	public String getThemeName() {
		return themeName;
	}

	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}

	public int getPlayTime() {
		return playTime;
	}

	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}

	public int getThemeNo() {
		return themeNo;
	}

	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}

	public int getHeadCount() {
		return headCount;
	}

	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "PriceVo [themeName=" + themeName + ", playTime=" + playTime + ", themeNo=" + themeNo + ", headCount="
				+ headCount + ", price=" + price + "]";
	}

}
