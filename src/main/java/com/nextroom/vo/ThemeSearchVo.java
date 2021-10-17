package com.nextroom.vo;

import java.util.List;

public class ThemeSearchVo {

	private List<String> sidoDetail;
	private List<String> jenre;
	private List<String> themeType;
	private int headCount;
	private List<String> levels;
	private List<String> activity;
	private String keyword;

	public ThemeSearchVo() {
		super();
	}

	public ThemeSearchVo(List<String> sidoDetail, List<String> jenre, List<String> themeType, int headCount,
			List<String> levels, List<String> activity, String keyword) {
		super();
		this.sidoDetail = sidoDetail;
		this.jenre = jenre;
		this.themeType = themeType;
		this.headCount = headCount;
		this.levels = levels;
		this.activity = activity;
		this.keyword = keyword;
	}

	public List<String> getSidoDetail() {
		return sidoDetail;
	}

	public void setSidoDetail(List<String> sidoDetail) {
		this.sidoDetail = sidoDetail;
	}

	public List<String> getJenre() {
		return jenre;
	}

	public void setJenre(List<String> jenre) {
		this.jenre = jenre;
	}

	public List<String> getThemeType() {
		return themeType;
	}

	public void setThemeType(List<String> themeType) {
		this.themeType = themeType;
	}

	public int getHeadCount() {
		return headCount;
	}

	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}

	public List<String> getLevels() {
		return levels;
	}

	public void setLevels(List<String> levels) {
		this.levels = levels;
	}

	public List<String> getActivity() {
		return activity;
	}

	public void setActivity(List<String> activity) {
		this.activity = activity;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "ThemeSearchVo [sidoDetail=" + sidoDetail + ", jenre=" + jenre + ", themeType=" + themeType
				+ ", headCount=" + headCount + ", levels=" + levels + ", activity=" + activity + ", keyword=" + keyword
				+ "]";
	}

}
