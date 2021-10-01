package com.nextroom.vo;

public class InteriorVo {

	private String img;

	public InteriorVo() {
		super();
	}

	public InteriorVo(String img) {
		super();
		this.img = img;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "InteriorVo [img=" + img + "]";
	}

}
