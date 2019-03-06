package com.tz.online.entity;

import java.io.Serializable;

public class Address implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long addressId;
	private String area;// 区域
	private String detailAddress;
	private String emailCode;
	private String reciver;
	private String tel;
	private String isDefault;// 是否默认收货地址 默认值是0
	private User user;
	
	public Address() {
		super();
	}

	public Address(Long addressId, String area, String detailAddress, String emailCode, String reciver, String tel,
			String isDefault, User user) {
		super();
		this.addressId = addressId;
		this.area = area;
		this.detailAddress = detailAddress;
		this.emailCode = emailCode;
		this.reciver = reciver;
		this.tel = tel;
		this.isDefault = isDefault;
		this.user = user;
	}

	public Long getAddressId() {
		return addressId;
	}

	public void setAddressId(Long addressId) {
		this.addressId = addressId;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getEmailCode() {
		return emailCode;
	}

	public void setEmailCode(String emailCode) {
		this.emailCode = emailCode;
	}

	public String getReciver() {
		return reciver;
	}

	public void setReciver(String reciver) {
		this.reciver = reciver;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getIsDefault() {
		return isDefault;
	}

	public void setIsDefault(String isDefault) {
		this.isDefault = isDefault;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Address [addressId=").append(addressId).append(", area=").append(area)
				.append(", detailAddress=").append(detailAddress).append(", emailCode=").append(emailCode)
				.append(", reciver=").append(reciver).append(", tel=").append(tel).append(", isDefault=")
				.append(isDefault).append("]");
		return builder.toString();
	}
	
	
	
	
}
