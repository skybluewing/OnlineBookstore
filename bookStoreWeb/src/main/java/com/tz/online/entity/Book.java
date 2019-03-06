package com.tz.online.entity;

import java.io.Serializable;
import java.util.Date;

public class Book implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long bookId;

	private String isbn;
	private String name;
	private String author;
	private String publisher;
	private Date publish_date;
	private double oldPrice;
	private double newPrice;
	private String author_loc;// 作者地区
	private Suit suit;
	private Category category;
	private String info;
	private String imgUrl;
	public Book() {
		super();
	}
	public Book(Long bookId, String isbn, String name, String author, String publisher, Date publish_date,
			double oldPrice, double newPrice, String author_loc, Suit suit, Category category, String info,
			String imgUrl) {
		super();
		this.bookId = bookId;
		this.isbn = isbn;
		this.name = name;
		this.author = author;
		this.publisher = publisher;
		this.publish_date = publish_date;
		this.oldPrice = oldPrice;
		this.newPrice = newPrice;
		this.author_loc = author_loc;
		this.suit = suit;
		this.category = category;
		this.info = info;
		this.imgUrl = imgUrl;
	}
	public Long getBookId() {
		return bookId;
	}
	public void setBookId(Long bookId) {
		this.bookId = bookId;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublish_date() {
		return publish_date;
	}
	public void setPublish_date(Date publish_date) {
		this.publish_date = publish_date;
	}
	public double getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(double oldPrice) {
		this.oldPrice = oldPrice;
	}
	public double getNewPrice() {
		return newPrice;
	}
	public void setNewPrice(double newPrice) {
		this.newPrice = newPrice;
	}
	public String getAuthor_loc() {
		return author_loc;
	}
	public void setAuthor_loc(String author_loc) {
		this.author_loc = author_loc;
	}
	public Suit getSuit() {
		return suit;
	}
	public void setSuit(Suit suit) {
		this.suit = suit;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Book [bookId=").append(bookId).append(", isbn=").append(isbn).append(", name=").append(name)
				.append(", author=").append(author).append(", publisher=").append(publisher).append(", oldPrice=")
				.append(oldPrice).append(", newPrice=").append(newPrice).append(", author_loc=").append(author_loc)
				.append(", info=").append(info).append(", imgUrl=").append(imgUrl).append("]");
		return builder.toString();
	}

}
