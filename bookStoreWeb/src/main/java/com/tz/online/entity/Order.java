package com.tz.online.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

public class Order implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long orderId;
	private String orderNum;// 订单编号
	private Date createDate;
	private Set<OrderItem> items;
	private User user;
	private Address address; // 发货地址
	private OrderStatus orderStatus;
	
	public Order() {
		super();
	}

	public Order(Long orderId, String orderNum, Date createDate, Set<OrderItem> items, User user, Address address,
			OrderStatus orderStatus) {
		super();
		this.orderId = orderId;
		this.orderNum = orderNum;
		this.createDate = createDate;
		this.items = items;
		this.user = user;
		this.address = address;
		this.orderStatus = orderStatus;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Set<OrderItem> getItems() {
		return items;
	}

	public void setItems(Set<OrderItem> items) {
		this.items = items;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public OrderStatus getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Order [orderId=").append(orderId).append(", orderNum=").append(orderNum).append(", address=")
				.append(address).append("]");
		return builder.toString();
	}

	

}
