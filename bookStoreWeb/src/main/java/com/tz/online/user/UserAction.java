//package com.tz.online.user;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.tz.online.entity.User;
//import com.tz.online.user.UserService;
//import com.tz.online.user.UserServiceImpl;
//
//
////@WebServlet("/user/*")
////public class UserAction extends HttpServlet {
////	private static final long serialVersionUID = 1L;
////	private UserService userService = new UserServiceImpl();
////	
////    public UserAction() {
////        super();
////    }
////
////	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////		String path = request.getPathInfo();
////		
////		if ("/login".equals(path)) {
////			forward(request, response, true, "/WEB-INF/view/book/index.jsp");
////			
////		}else if(path.equals("/submitLogin")){ 
////			//1.���յ�½form���е�����.
////			String username = request.getParameter("username");
////			String password = request.getParameter("password");
////			
////			//2.����username����ȡUser����.
////			User user = userService.
////			
////			if(user != null && user.getPassWord().equals(password)){//��¼�ɹ�
////				//�����user����ֱ�ӷ��뵽session������.
////				request.getSession().setAttribute("user", user);
////				response.sendRedirect(request.getContextPath()+"/book/bookList");
////			}else{//��¼ʧ����ת��¼ҳ��
////				response.sendRedirect(request.getContextPath()+"/user/login");
////			}
////		}else if("/safeExit".equals(path)){//�˳�
////			//�Ƴ�session
////			request.getSession().removeAttribute("user");
////			response.sendRedirect(request.getContextPath()+"/user/login");
////		}
////	}
////
////	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//	
//
//	private void forward(HttpServletRequest request, HttpServletResponse response, boolean b, String target)
//			throws ServletException, IOException {
//		if (b) {
//			RequestDispatcher rd = getServletContext().getRequestDispatcher(target);
//			rd.forward(request, response);
//			return;
//		} else {
//			String contextPath = getServletContext().getContextPath();
//			response.sendRedirect(contextPath + target);
//			return;
//		}
//	}
//
//}
