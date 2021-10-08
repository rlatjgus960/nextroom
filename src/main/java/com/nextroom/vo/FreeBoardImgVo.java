package com.nextroom.vo;

public class FreeBoardImgVo {

	private int boardNo;
	private String img;
	
	
	
	public FreeBoardImgVo() {
		super();
	}



	public FreeBoardImgVo(int boardNo, String img) {
		super();
		this.boardNo = boardNo;
		this.img = img;
	}



	public int getBoardNo() {
		return boardNo;
	}



	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}



	@Override
	public String toString() {
		return "FreeBoardImgVo [boardNo=" + boardNo + ", img=" + img + "]";
	}
	
	
}
