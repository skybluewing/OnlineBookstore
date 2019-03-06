package com.tz.online.entity;

import java.io.Serializable;
import java.util.List;

public class PageBean<T> implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5888862946459942403L;

	private final int MAX_PAGE_SIZE = 50; //���ÿҳ��ʾ50��
	public static final int DEFAULT_PAGE_SIZE = 8;
	//����
	private int total; //�ܼ�¼��
	private int pageSize; //ÿҳ��ʾ�ļ�¼����Ĭ����8
	private int pageNum; //��ҳ��
	
	private int first = 1; //��1ҳ
	private int last; //���1ҳ
	private int previous; //��һҳ
	private int next; //��һҳ
	private int current = 1; //��ǰҳ,Ĭ����1
	
	private List<T> datas; //��ŷ�ҳ������
	
	public PageBean(int total) {
		this(total, DEFAULT_PAGE_SIZE); //Ĭ�ϵ�ÿҳ������ 8
	}
	
	public PageBean(int total, int pageSize) {
		//��ֵ
		this.total = total;
		if(pageSize > MAX_PAGE_SIZE) {
			this.pageSize = MAX_PAGE_SIZE;
		} else {
			this.pageSize = pageSize;
		}
		//������ pageSizeӰ�������
		update();
		
		this.current = 1; //Ĭ�ϵ�ǰҳ����1
		
		this.next = this.pageNum == 1 ? 1 : this.current + 1;
		this.previous = this.current == 1 ? 1 : this.current - 1;
	}

	public int getTotal() {
		return total;
	}

	public int getPageSize() {
		return pageSize;
	}

	//ע�⣬��Ӱ������������ֵ
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
		update();
	}

	private void update() { //������������ pageSize����������ֵ
		//�����ܼ�¼����ÿҳ��¼��������� ��ҳ��
		this.pageNum = this.total / this.pageSize;
		if(this.total % this.pageSize != 0) {
			this.pageNum ++;
		}
				
		//����������Ը�ֵ
		this.last = this.pageNum; //���һҳ��������ҳ��
		//��ʱ this.current��ֵ�п��ܻ���� this.last
		if(this.current > this.last) {
			//��ÿҳ����������󣬵�ǰ��ҳ�볬�����1ҳʱ����ǰҳ��Ϊ���1ҳ
			this.current = this.last; 
		}
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getFirst() {
		return first;
	}

	public int getLast() {
		return last;
	}

	public void setLast(int last) {
		this.last = last;
	}

	public int getPrevious() {
		return previous;
	}

	public void setPrevious(int previous) {
		this.previous = previous;
	}

	public int getNext() {
		return next;
	}

	public void setNext(int next) {
		this.next = next;
	}

	public int getCurrent() {
		return current;
	}

	//���������Ӱ��һЩ����
	public void setCurrent(int current) {
		this.current = current;
		//�޸� previous��next
		this.previous = this.current == 1 ? 1 : this.current - 1;
		this.next = this.pageNum == 1 ? 1 : this.current + 1;
		if(this.next > this.last) {
			this.next = this.last; //����������1�У���������1��
		}
	}

	public List<T> getDatas() {
		return datas;
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PageBean [total=").append(total).append(", pageSize=").append(pageSize).append(", pageNum=")
				.append(pageNum).append(", first=").append(first).append(", last=").append(last).append(", previous=")
				.append(previous).append(", next=").append(next).append(", current=").append(current).append("]");
		return builder.toString();
	}
}
