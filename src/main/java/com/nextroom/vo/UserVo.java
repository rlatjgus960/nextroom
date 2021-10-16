package com.nextroom.vo;

public class UserVo {
	
	private int userNo;
	private String id;
	private String password;
	private String userName;
	private String userHp;
	private String email;
	private String nickname;
	private String profile;
	private String userType;
	private int cafeNo;
	
	
	
	public UserVo() {
		super();
	}
	
	

	public UserVo(int userNo, String id, String password, String userName, String userHp, String email, String nickname,
			String userType, int cafeNo) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.userName = userName;
		this.userHp = userHp;
		this.email = email;
		this.nickname = nickname;
		this.userType = userType;
		this.cafeNo = cafeNo;
	}

	
	public UserVo(int userNo, String id, String password, String userName, String userHp, String email, String nickname,
			String profile, String userType, int cafeNo) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.userName = userName;
		this.userHp = userHp;
		this.email = email;
		this.nickname = nickname;
		this.profile = profile;
		this.userType = userType;
		this.cafeNo = cafeNo;
	}



	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserHp() {
		return userHp;
	}

	public void setUserHp(String userHp) {
		this.userHp = userHp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public int getCafeNo() {
		return cafeNo;
	}



	public void setCafeNo(int cafeNo) {
		this.cafeNo = cafeNo;
	}


	public String getProfile() {
		return profile;
	}



	public void setProfile(String profile) {
		this.profile = profile;
	}



	@Override
	public String toString() {
		return "UserVo [userNo=" + userNo + ", id=" + id + ", password=" + password + ", userName=" + userName
				+ ", userHp=" + userHp + ", email=" + email + ", nickname=" + nickname + ", profile=" + profile
				+ ", userType=" + userType + ", cafeNo=" + cafeNo + "]";
	}





	
	
	
	
	
	

}
