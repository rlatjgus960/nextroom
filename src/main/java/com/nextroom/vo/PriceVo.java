package com.nextroom.vo;

public class PriceVo {
	private int themeNo;
	private int headCount;
	private int price;

	public PriceVo() {
		super();
	}

	public PriceVo(int themeNo, int headCount, int price) {
		super();
		this.themeNo = themeNo;
		this.headCount = headCount;
		this.price = price;
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
		return "PriceVo [themeNo=" + themeNo + ", headCount=" + headCount + ", price=" + price + "]";
	}

}
