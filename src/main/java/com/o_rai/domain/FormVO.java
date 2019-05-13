package com.o_rai.domain;

import org.hibernate.validator.constraints.NotEmpty;

public class FormVO {

	@NotEmpty
	private String firstEmail;
	@NotEmpty
	private String lastEmail;
	
	@NotEmpty
	private String pwd;
	@NotEmpty
	private String firstPhoneNum;
	@NotEmpty
	private String lastPhoneNum;
	
	@NotEmpty
	private String roadAddress;
	@NotEmpty
	private String buildingName;
	@NotEmpty
	private int fee;
	@NotEmpty
	private int openTime;
	@NotEmpty
	private int closeTime;
	
	@NotEmpty
	private int bookableCount;
	@NotEmpty
	private int totalCount;
	
	@NotEmpty
	private double longitude;
	@NotEmpty
	private double latitude;
	
	private String postcode;
	
	public String getFirstEmail() {
		return firstEmail;
	}
	public String getLastEmail() {
		return lastEmail;
	}
	public String getPwd() {
		return pwd;
	}
	public String getFirstPhoneNum() {
		return firstPhoneNum;
	}
	public String getLastPhoneNum() {
		return lastPhoneNum;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public String getBuildingName() {
		return buildingName;
	}
	public int getFee() {
		return fee;
	}
	public int getOpenTime() {
		return openTime;
	}
	public int getCloseTime() {
		return closeTime;
	}
	public int getBookableCount() {
		return bookableCount;
	}
	public double getLongitude() {
		return longitude;
	}
	public double getLatitude() {
		return latitude;
	}
	public void setFirstEmail(String firstEmail) {
		this.firstEmail = firstEmail;
	}
	public void setLastEmail(String lastEmail) {
		this.lastEmail = lastEmail;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setFirstPhoneNum(String firstPhoneNum) {
		this.firstPhoneNum = firstPhoneNum;
	}
	public void setLastPhoneNum(String lastPhoneNum) {
		this.lastPhoneNum = lastPhoneNum;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public void setOpenTime(int openTime) {
		this.openTime = openTime;
	}
	public void setCloseTime(int closeTime) {
		this.closeTime = closeTime;
	}
	public void setBookableCount(int bookableCount) {
		this.bookableCount = bookableCount;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	@Override
	public String toString() {
		return "FormVO [firstEmail=" + firstEmail + ", lastEmail=" + lastEmail + ", pwd=" + pwd + ", firstPhoneNum="
				+ firstPhoneNum + ", lastPhoneNum=" + lastPhoneNum + ", roadAddress=" + roadAddress + ", buildingName="
				+ buildingName + ", fee=" + fee + ", openTime=" + openTime + ", closeTime=" + closeTime
				+ ", bookableCount=" + bookableCount + ", totalCount=" + totalCount + ", longitude=" + longitude + ", latitude=" + latitude + "]";
	}
	
}
