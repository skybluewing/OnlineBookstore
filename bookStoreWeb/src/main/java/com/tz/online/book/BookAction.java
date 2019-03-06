package com.tz.online.book;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.tz.online.entity.Book;
import com.tz.online.entity.Category;
import com.alibaba.fastjson.JSON;
import com.tz.online.book.BookService;
import com.tz.online.book.BookServiceImpl;
import com.tz.online.entity.PageBean;

@WebServlet("/book/*")
public class BookAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public BookAction() {
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("dd");
		//		String info = request.getPathInfo();
//		BookService bs = new BookServiceImpl();
//		//获取图书种类--由取出顺序决定0精选图书，1推荐图书，2特价图书,库里没改。。
//		List<Category> categories = bs.getAllCategories();
//		
//
//        if("/login.html".equals(info)) {
//            
//            //检查是否有cookie
//            Cookie[] cookies = request.getCookies();
//            if(cookies != null && cookies.length > 0) {
//                for (Cookie c : cookies) {
//                    if("bsuser".equals(c.getName()) && !"".equals(c.getValue())){
//                        String[] split = c.getValue().split(":");
//                        
//                        request.setAttribute("uname", split[0]);
//                        request.setAttribute("pwd", split[1]);
//                    }
//                }
//            }
//            
//            //不同种类图书放入集合
//            List<PageBean<Book>> list = new ArrayList<>();
//            for (int i = 0; i < categories.size(); i++) {
//                PageBean<Book> pageBean = bs.findBookByCondition(1, 4, categories.get(i));
//                
//                
//                list.add(pageBean);
//            }
//            request.setAttribute("booksByCate", list);
//            
//            request.getRequestDispatcher("/WEB-INF/view/book/index.jsp").forward(request, response);
//        }
//            
//        //首页异步跟新
//        for (int i = 0; i < categories.size(); i++) {
//            if(("/cate"+i).equals(info)) {
//                
//                String pre = request.getParameter("pre"+i);
//                String next = request.getParameter("next"+i);
//                
//                String pageNow = (pre == null)?next:pre;
//                System.out.println(pageNow);
//                
//                PageBean<Book> pageBean = bs.findBookByCondition(Integer.valueOf(pageNow), 4, categories.get(i));
//                
//                response.getWriter().print(JSON.toJSONString(pageBean));
//            }
//        }
//
//        //图书批量查询
//        if("/books_list".equals(info)) {
//            String cateNo = request.getParameter("cateNo");
//            String pageNow = request.getParameter("pageNow");
//            String pageSize = request.getParameter("pageSize");
//            String match = request.getParameter("match");
//            
//            Category cate = null;
//            PageBean<Book> pageBean = null;
//            if(cateNo != null && Integer.valueOf(cateNo) >= 0){
//                cate = categories.get(Integer.valueOf(cateNo));
//                pageBean = bs.findBookByCondition(Integer.valueOf(pageNow==null?"1":pageNow), Integer.valueOf(pageSize==null?"12":pageSize), cate);
//                
//                request.setAttribute("category"+cateNo, pageBean);
//                
//            } else if(match != null && !"-1".equals(match)) {
//                
//                pageBean = bs.findBookByName(Integer.valueOf(pageNow==null?"1":pageNow), Integer.valueOf(pageSize==null?"12":pageSize),"nbsp".equals(match)?"":match);
//                
//                request.setAttribute("match", match.isEmpty()?"nbsp":match);
//                request.setAttribute("search", pageBean);
//            }
//           
//            
//            request.setAttribute("pageSize", (pageSize==null?"12":pageSize));
//            
//            request.getRequestDispatcher("/WEB-INF/view/book/books_list.jsp").forward(request, response);
//        }
//        
//        if("/details".equals(info)) {
//            String bookId = request.getParameter("bookId");
//            
//            Book book = bs.findBookById(Long.valueOf(bookId));
//            
//            request.setAttribute("book", book);
//            
//            request.getRequestDispatcher("/WEB-INF/view/book/details.jsp").forward(request, response);
//        }
            
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
