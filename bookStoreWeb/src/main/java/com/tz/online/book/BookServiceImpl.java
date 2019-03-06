package com.tz.online.book;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.tz.online.book.BookMapper;
import com.tz.online.entity.Book;
import com.tz.online.entity.Category;
import com.tz.online.entity.PageBean;
import com.tz.online.util.MBUtil;

public class BookServiceImpl implements BookService {
	SqlSession session = MBUtil.getInstance().getSqlSessionFactory().openSession();
	BookMapper mapper = session.getMapper(BookMapper.class);

	@Override
    public PageBean<Book> findBookByCondition(Integer pageNow, Integer pageSize, Category cate) {
        List<Book> list = mapper.findBookByCondition(pageNow, pageSize, cate);
        int rowCount = mapper.rowCount(cate);
        
        PageBean<Book> pageBean = new PageBean<>(rowCount, pageSize);
        pageBean.setDatas(list);
        pageBean.setCurrent(pageNow);
        MBUtil.finishSession(session);
        return pageBean;
    }

    @Override
    public PageBean<Book> findBookByName(Integer pageNow, Integer pageSize, String name) {
        List<Book> list = mapper.findBookByName(pageNow, pageSize, name);
        int rowCount = mapper.rowCountByName(name);

        PageBean<Book> pageBean = new PageBean<>(rowCount, pageSize);
        pageBean.setDatas(list);
        pageBean.setCurrent(pageNow);
        MBUtil.finishSession(session);
        return pageBean;
    }
    
    @Override
    public Book findBookById(Long id) {
        Book book = mapper.findBookById(id);
        MBUtil.finishSession(session);
        return book;
    }

    @Override
    public List<Category> getAllCategories() {
        List<Category> categories = mapper.getAllCategories();
        MBUtil.finishSession(session);
        return categories;
    }

}
