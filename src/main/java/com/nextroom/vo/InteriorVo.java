package com.nextroom.vo;

public class InteriorVo {

	private int interiorNo;
	private int cafeNo;
	private String img;

	public InteriorVo() {
		super();
	}

	public InteriorVo(int interiorNo, int cafeNo, String img) {
		super();
		this.interiorNo = interiorNo;
		this.cafeNo = cafeNo;
		this.img = img;
	}

	public int getInteriorNo() {
		return interiorNo;
	}

	public void setInteriorNo(int interiorNo) {
		this.interiorNo = interiorNo;
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
		return "InteriorVo [interiorNo=" + interiorNo + ", cafeNo=" + cafeNo + ", img=" + img + "]";
	}

}
