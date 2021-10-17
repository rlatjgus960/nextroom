package com.nextroom.vo;

public class FreeBoardImgVo {

	private int boardNo;
	private String img;
	private int freeboardImgNo;
	
	
	public FreeBoardImgVo() {
		super();
	}


	public FreeBoardImgVo(int boardNo, String img, int freeboardImgNo) {
		super();
		this.boardNo = boardNo;
		this.img = img;
		this.freeboardImgNo = freeboardImgNo;
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


	public int getFreeboardImgNo() {
		return freeboardImgNo;
	}


	public void setFreeboardImgNo(int freeboardImgNo) {
		this.freeboardImgNo = freeboardImgNo;
	}


	@Override
	public String toString() {
		return "FreeBoardImgVo [boardNo=" + boardNo + ", img=" + img + ", freeboardImgNo=" + freeboardImgNo + "]";
	}



	
	
}
