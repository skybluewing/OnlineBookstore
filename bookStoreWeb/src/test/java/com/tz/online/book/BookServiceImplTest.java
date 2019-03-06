package com.tz.online.book;

import java.util.List;
import org.junit.Test;
import com.tz.online.book.BookService;
import com.tz.online.book.BookServiceImpl;
import com.tz.online.entity.Book;
import com.tz.online.entity.Category;
import com.tz.online.entity.PageBean;

public class BookServiceImplTest {
	 private BookService bs = new BookServiceImpl();

	    @Test
	    public void testFindBookByCondition() {
	        PageBean<Book> pageBean = bs.findBookByCondition(1, 4, Category.¾«Ñ¡Í¼Êé);
	        
	        List<Book> datas = pageBean.getDatas();
	        for (Book b : datas) {
	            System.out.println(b);
	        }
	    }

	    @Test
	    public void testFindBookByName() {
	        PageBean<Book> pageBean = bs.findBookByName(1, 4, "");
	        
	        List<Book> datas = pageBean.getDatas();
	        for (Book b : datas) {
	            System.out.println(b);
	        }
	    }
	    
	    
	    @Test
	    public void testFindBookById() {
	        Book book = bs.findBookById(3L);
	        
	        System.out.println(book);
	    }

	    @Test
	    public void testGetAllCategories() {
	        List<Category> list = bs.getAllCategories();
	        
	        for (Category c : list) {
	            System.out.println(c);
	        }
	    }
}
