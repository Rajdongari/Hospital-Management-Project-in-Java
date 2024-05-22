package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.userDao;
import com.dbcon.DBConnect;
import com.pojo.user;

/**
 * Servlet implementation class userlogin
 */
@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		userDao dao=new userDao(DBConnect.getConn());
		user User=dao.login(email, password);
		
		
		if((User!=null))
		{
			session.setAttribute("userobj",User);

			response.sendRedirect("index.jsp");
		}else
		{
			session.setAttribute("errorMsg","Invalid details");
			response.sendRedirect("userlogin.jsp");
		}
		
	}
	}

