package com.nextroom.vo;

import org.springframework.web.multipart.MultipartFile;

public class ReviewBoardVo {

	//필드
	private int reviewNo;
	private int themeNo;
	private int userNo;
	private int feelLevel;
	private int rating;
	private int recTime;
	private int reviewHints;
	private String reviewClear;
	private int memberNum;
	private String playDate;
	private String reviewRegDate;
	private int reviewLike;
	private String reviewTitle;
	private String reviewContent;
	private int reviewHit;
	
	//2021.09.29추가
	private String sido;
	private String sidoDetail;
	private String themeName;
	private int cafeNo;
	private String cafeName;
	
	//2021.09.30추가
	private String nickname;
	
	//2021.10.05추가
	private String reviewImg;
	private MultipartFile reviewImgFile;
	//생성자
	public ReviewBoardVo() {
		super();
	}
	public ReviewBoardVo(int reviewNo, int themeNo, int userNo, int feelLevel, int rating, int recTime, int reviewHints,
			String reviewClear, int memberNum, String playDate, String reviewRegDate, int reviewLike,
			String reviewTitle, String reviewContent, int reviewHit, String sido, String sidoDetail, String themeName,
			int cafeNo, String cafeName, String nickname, String reviewImg, MultipartFile reviewImgFile) {
		super();
		this.reviewNo = reviewNo;
		this.themeNo = themeNo;
		this.userNo = userNo;
		this.feelLevel = feelLevel;
		this.rating = rating;
		this.recTime = recTime;
		this.reviewHints = reviewHints;
		this.reviewClear = reviewClear;
		this.memberNum = memberNum;
		this.playDate = playDate;
		this.reviewRegDate = reviewRegDate;
		this.reviewLike = reviewLike;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewHit = reviewHit;
		this.sido = sido;
		this.sidoDetail = sidoDetail;
		this.themeName = themeName;
		this.cafeNo = cafeNo;
		this.cafeName = cafeName;
		this.nickname = nickname;
		this.reviewImg = reviewImg;
		this.reviewImgFile = reviewImgFile;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getThemeNo() {
		return themeNo;
	}
	public void setThemeNo(int themeNo) {
		this.themeNo = themeNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getFeelLevel() {
		return feelLevel;
	}
	public void setFeelLevel(int feelLevel) {
		this.feelLevel = feelLevel;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getRecTime() {
		return recTime;
	}
	public void setRecTime(int recTime) {
		this.recTime = recTime;
	}
	public int getReviewHints() {
		return reviewHints;
	}
	public void setReviewHints(int reviewHints) {
		this.reviewHints = reviewHints;
	}
	public String getReviewClear() {
		return reviewClear;
	}
	public void setReviewClear(String reviewClear) {
		this.reviewClear = reviewClear;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getPlayDate() {
		return playDate;
	}
	public void setPlayDate(String playDate) {
		this.playDate = playDate;
	}
	public String getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(String reviewRegDate) {
		this.reviewRegDate = reviewRegDate;
	}
	public int getReviewLike() {
		return reviewLike;
	}
	public void setReviewLike(int reviewLike) {
		this.reviewLike = reviewLike;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewHit() {
		return reviewHit;
	}
	public void setReviewHit(int reviewHit) {
		this.reviewHit = reviewHit;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSidoDetail() {
		return sidoDetail;
	}
	public void setSidoDetail(String sidoDetail) {
		this.sidoDetail = sidoDetail;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public int getCafeNo() {
		return cafeNo;
	}
	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}
	public String getCafeName() {
		return cafeName;
	}
	public void setCafeName(String cafeName) {
		this.cafeName = cafeName;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public MultipartFile getReviewImgFile() {
		return reviewImgFile;
	}
	public void setReviewImgFile(MultipartFile reviewImgFile) {
		this.reviewImgFile = reviewImgFile;
	}
	@Override
	public String toString() {
		return "ReviewBoardVo [reviewNo=" + reviewNo + ", themeNo=" + themeNo + ", userNo=" + userNo + ", feelLevel="
				+ feelLevel + ", rating=" + rating + ", recTime=" + recTime + ", reviewHints=" + reviewHints
				+ ", reviewClear=" + reviewClear + ", memberNum=" + memberNum + ", playDate=" + playDate
				+ ", reviewRegDate=" + reviewRegDate + ", reviewLike=" + reviewLike + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewHit=" + reviewHit + ", sido=" + sido + ", sidoDetail="
				+ sidoDetail + ", themeName=" + themeName + ", cafeNo=" + cafeNo + ", cafeName=" + cafeName
				+ ", nickname=" + nickname + ", reviewImg=" + reviewImg + ", reviewImgFile=" + reviewImgFile + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
