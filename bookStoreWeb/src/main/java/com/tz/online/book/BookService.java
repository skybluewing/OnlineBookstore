package com.tz.online.book;

import java.util.List;

import com.tz.online.entity.Book;
import com.tz.online.entity.Category;
import com.tz.online.entity.PageBean;

public interface BookService {
	
    //根据类型查询并分页
    public PageBean<Book> findBookByCondition(Integer pageNow, Integer pageSize, Category cate);
    
   //根据书名查询并分页
    public PageBean<Book> findBookByName(Integer pageNow, Integer pageSize, String name);
    
   //根据id查询图书
    public Book findBookById(Long id);
    
  //获取图书类型
    List<Category> getAllCategories();
}
