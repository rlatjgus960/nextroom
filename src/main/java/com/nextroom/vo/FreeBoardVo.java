package com.nextroom.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FreeBoardVo {

	//필드
	private int boardNo;
	private int userNo;
	private String boardTitle;
	private String boardContent;
	private String regDate;
	private int boardHit;
	private int boardLike;
	private String boardImg;
    private MultipartFile boardImgFile;
	private String nickname;
	
	//2021.10.10 추가
	private List<MultipartFile> multiImgFile;
	private List<FreeBoardImgVo> MultiList;
	
	
	public FreeBoardVo() {
		super();
	}


	public FreeBoardVo(int boardNo, int userNo, String boardTitle, String boardContent, String regDate, int boardHit,
			int boardLike, String boardImg, MultipartFile boardImgFile, String nickname,
			List<MultipartFile> multiImgFile, List<FreeBoardImgVo> multiList) {
		super();
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.regDate = regDate;
		this.boardHit = boardHit;
		this.boardLike = boardLike;
		this.boardImg = boardImg;
		this.boardImgFile = boardImgFile;
		this.nickname = nickname;
		this.multiImgFile = multiImgFile;
		MultiList = multiList;
	}


	public int getBoardNo() {
		return boardNo;
	}


	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getBoardTitle() {
		return boardTitle;
	}


	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public int getBoardHit() {
		return boardHit;
	}


	public void setBoardHit(int boardHit) {
		this.boardHit = boardHit;
	}


	public int getBoardLike() {
		return boardLike;
	}


	public void setBoardLike(int boardLike) {
		this.boardLike = boardLike;
	}


	public String getBoardImg() {
		return boardImg;
	}


	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
	}


	public MultipartFile getBoardImgFile() {
		return boardImgFile;
	}


	public void setBoardImgFile(MultipartFile boardImgFile) {
		this.boardImgFile = boardImgFile;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public List<MultipartFile> getMultiImgFile() {
		return multiImgFile;
	}


	public void setMultiImgFile(List<MultipartFile> multiImgFile) {
		this.multiImgFile = multiImgFile;
	}


	public List<FreeBoardImgVo> getMultiList() {
		return MultiList;
	}


	public void setMultiList(List<FreeBoardImgVo> multiList) {
		MultiList = multiList;
	}


	@Override
	public String toString() {
		return "FreeBoardVo [boardNo=" + boardNo + ", userNo=" + userNo + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", regDate=" + regDate + ", boardHit=" + boardHit + ", boardLike="
				+ boardLike + ", boardImg=" + boardImg + ", boardImgFile=" + boardImgFile + ", nickname=" + nickname
				+ ", multiImgFile=" + multiImgFile + ", MultiList=" + MultiList + "]";
	}


	
	
}
