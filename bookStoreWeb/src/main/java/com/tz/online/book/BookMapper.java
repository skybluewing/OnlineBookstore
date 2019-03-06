package com.tz.online.book;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tz.online.entity.Book;
import com.tz.online.entity.Category;

public interface BookMapper {


    //根据图书类型查询并分页
    public List<Book> findBookByCondition(@Param("pageNow")Integer pageNow, @Param("pageSize")Integer pageSize, @Param("cate")Category cate);
    
    //获取图书总数
    public int rowCount(@Param("cate")Category cate);
    
    //根据图书类型查询并分页
    public List<Book> findBookByName(@Param("pageNow")Integer pageNow, @Param("pageSize")Integer pageSize, @Param("name")String name);
    
    //获取图书总数
    public int rowCountByName(@Param("name")String cate);
    
    //根据id查询图书
    public Book findBookById(Long bookId);
    
    //获取图书类型
    List<Category> getAllCategories();
	
}
