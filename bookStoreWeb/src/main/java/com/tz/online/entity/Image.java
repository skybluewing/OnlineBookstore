package com.tz.online.entity;

import java.io.Serializable;

public class Image implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Long imgId;
	private String url;
	private Book book;
	private String info;
	public Image() {
		super();
	}
	public Image(Long imgId, String url, Book book, String info) {
		super();
		this.imgId = imgId;
		this.url = url;
		this.book = book;
		this.info = info;
	}
	public Long getImgId() {
		return imgId;
	}
	public void setImgId(Long imgId) {
		this.imgId = imgId;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Image [imgId=").append(imgId).append(", url=").append(url).append(", book=").append(book)
				.append(", info=").append(info).append("]");
		return builder.toString();
	}

	

}
