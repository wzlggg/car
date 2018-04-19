package com.sowell.o2o.model;

import java.io.Serializable;

/**
 * 对应ykat数据库中的ykat_store表
 */
public class Store implements Serializable {
	
	private long id;
	private String storeName;
	private String storeAddress;
	private String storeLongitude;
	private String storeLatitude;
	private String storePhone;
	private String storeDescription;
	private String storeQwnerName;
	private long ptUserId;
	private String storeSecondtel;
	private String idCard;
	private String businessLicenseNo;
	private String businessLicenseImg;
	private String storeImg;
	private String idCardImag;
	private float deposit;
	private float preDeposit;
	private int depositStatus;
	private long createTime;
	private String city;
	private long updateTime;
	private int isVerify;
	private String storeDescribe;
	private String notCheckReason;
	private int isDel;
	private int score;
	private int serviceType;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreAddress() {
		return storeAddress;
	}

	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}

	public String getStoreLongitude() {
		return storeLongitude;
	}

	public void setStoreLongitude(String storeLongitude) {
		this.storeLongitude = storeLongitude;
	}

	public String getStoreLatitude() {
		return storeLatitude;
	}

	public void setStoreLatitude(String storeLatitude) {
		this.storeLatitude = storeLatitude;
	}

	public String getStorePhone() {
		return storePhone;
	}

	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}

	public String getStoreDescription() {
		return storeDescription;
	}

	public void setStoreDescription(String storeDescription) {
		this.storeDescription = storeDescription;
	}

	public String getStoreQwnerName() {
		return storeQwnerName;
	}

	public void setStoreQwnerName(String storeQwnerName) {
		this.storeQwnerName = storeQwnerName;
	}

	public long getPtUserId() {
		return ptUserId;
	}

	public void setPtUserId(long ptUserId) {
		this.ptUserId = ptUserId;
	}

	public String getStoreSecondtel() {
		return storeSecondtel;
	}

	public void setStoreSecondtel(String storeSecondtel) {
		this.storeSecondtel = storeSecondtel;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getBusinessLicenseNo() {
		return businessLicenseNo;
	}

	public void setBusinessLicenseNo(String businessLicenseNo) {
		this.businessLicenseNo = businessLicenseNo;
	}

	public String getBusinessLicenseImg() {
		return businessLicenseImg;
	}

	public void setBusinessLicenseImg(String businessLicenseImg) {
		this.businessLicenseImg = businessLicenseImg;
	}

	public String getStoreImg() {
		return storeImg;
	}

	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}

	public String getIdCardImag() {
		return idCardImag;
	}

	public void setIdCardImag(String idCardImag) {
		this.idCardImag = idCardImag;
	}

	public float getDeposit() {
		return deposit;
	}

	public void setDeposit(float deposit) {
		this.deposit = deposit;
	}

	public float getPreDeposit() {
		return preDeposit;
	}

	public void setPreDeposit(float preDeposit) {
		this.preDeposit = preDeposit;
	}

	public int getDepositStatus() {
		return depositStatus;
	}

	public void setDepositStatus(int depositStatus) {
		this.depositStatus = depositStatus;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public long getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(long updateTime) {
		this.updateTime = updateTime;
	}

	public int getIsVerify() {
		return isVerify;
	}

	public void setIsVerify(int isVerify) {
		this.isVerify = isVerify;
	}

	public String getStoreDescribe() {
		return storeDescribe;
	}

	public void setStoreDescribe(String storeDescribe) {
		this.storeDescribe = storeDescribe;
	}

	public String getNotCheckReason() {
		return notCheckReason;
	}

	public void setNotCheckReason(String notCheckReason) {
		this.notCheckReason = notCheckReason;
	}

	public int getIsDel() {
		return isDel;
	}

	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getServiceType() {
		return serviceType;
	}

	public void setServiceType(int serviceType) {
		this.serviceType = serviceType;
	}
}
