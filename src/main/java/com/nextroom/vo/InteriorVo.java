package com.nextroom.vo;

public class InteriorVo {

	private int cafeNo;
	private String img;

	public InteriorVo() {
		super();
	}

	public InteriorVo(int cafeNo, String img) {
		super();
		this.cafeNo = cafeNo;
		this.img = img;
	}

	public int getCafeNo() {
		return cafeNo;
	}

	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "InteriorVo [cafeNo=" + cafeNo + ", img=" + img + "]";
	}

}
