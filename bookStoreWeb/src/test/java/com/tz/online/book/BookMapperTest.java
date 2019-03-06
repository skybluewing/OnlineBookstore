package com.tz.online.book;


import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.tz.online.book.BookMapper;
import com.tz.online.entity.Book;
import com.tz.online.entity.Category;
import com.tz.online.util.MBUtil;

public class BookMapperTest {
	SqlSession session = MBUtil.getInstance().getSqlSessionFactory().openSession();
	BookMapper mapper = session.getMapper(BookMapper.class);

	 @Test
	    public void testFindBookByCondition() {
	        List<Book> list = mapper.findBookByCondition(1, 5, Category.精选图书);
	        
	        for (Book b : list) {
	            System.out.println(b);
	        }
	        MBUtil.finishSession(session);
	    }

	    @Test
	    public void testRowCount() {
	        int count = mapper.rowCount(Category.精选图书);
	        
	        System.out.println(count);
	        MBUtil.finishSession(session);
	    }

	    @Test
	    public void testFindBookByName() {
	        List<Book> list = mapper.findBookByName(2, 5, "");
	        
	        for (Book b : list) {
	            System.out.println(b);
	        }
	        MBUtil.finishSession(session);
	    }

	    @Test
	    public void testRowCountByName() {
	        int count = mapper.rowCountByName("");
	        
	        System.out.println(count);
	        MBUtil.finishSession(session);
	    }
	    
	    
	    @Test
	    public void testFindBookById() {
	        Book book = mapper.findBookById(2L);
	        
	        System.out.println(book);
	        MBUtil.finishSession(session);
	    }

	    @Test
	    public void getAllCategories() {
	        List<Category> categories = mapper.getAllCategories();
	        
	        for (Category c : categories) {
	            System.out.println(c);
	        }
	        MBUtil.finishSession(session);
	    }
}
