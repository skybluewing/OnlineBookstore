package com.tz.online.book;

import java.util.List;

import com.tz.online.entity.Book;
import com.tz.online.entity.Category;
import com.tz.online.entity.PageBean;

public interface BookService {
	
    //�������Ͳ�ѯ����ҳ
    public PageBean<Book> findBookByCondition(Integer pageNow, Integer pageSize, Category cate);
    
   //����������ѯ����ҳ
    public PageBean<Book> findBookByName(Integer pageNow, Integer pageSize, String name);
    
   //����id��ѯͼ��
    public Book findBookById(Long id);
    
  //��ȡͼ������
    List<Category> getAllCategories();
}
