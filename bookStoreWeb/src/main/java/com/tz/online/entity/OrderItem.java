package com.tz.online.entity;

import java.io.Serializable;

public class OrderItem implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long itemId;

	private String book_isbn;
	private String book_name;
	private String book_author;
	private String book_img;
	private int count; // 购买数量
	private double allPrice; // 此明细的总价
	private Order order; // 此明细所属的订单
	
	public OrderItem() {
		super();
	}

	public OrderItem(Long itemId, String book_isbn, String book_name, String book_author, String book_img, int count,
			double allPrice, Order order) {
		super();
		this.itemId = itemId;
		this.book_isbn = book_isbn;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_img = book_img;
		this.count = count;
		this.allPrice = allPrice;
		this.order = order;
	}

	public Long getItemId() {
		return itemId;
	}

	public void setItemId(Long itemId) {
		this.itemId = itemId;
	}

	public String getBook_isbn() {
		return book_isbn;
	}

	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getBook_author() {
		return book_author;
	}

	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}

	public String getBook_img() {
		return book_img;
	}

	public void setBook_img(String book_img) {
		this.book_img = book_img;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getAllPrice() {
		return allPrice;
	}

	public void setAllPrice(double allPrice) {
		this.allPrice = allPrice;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("OrderItem [itemId=").append(itemId).append(", book_isbn=").append(book_isbn)
				.append(", book_name=").append(book_name).append(", book_author=").append(book_author)
				.append(", book_img=").append(book_img).append(", count=").append(count).append(", allPrice=")
				.append(allPrice).append(", order=").append(order).append("]");
		return builder.toString();
	}

	
	
}
