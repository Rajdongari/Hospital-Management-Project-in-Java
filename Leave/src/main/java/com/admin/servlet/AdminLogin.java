package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		
		if((email.equals("admin@gmail.com")&& password.equals("admin")))
		{
			session.setAttribute("adminobj","hm");
			response.sendRedirect("Admin/adminDashboard.jsp");
		}else
		{
			session.setAttribute("errorMsg","Invalid details");
			response.sendRedirect("adminlogin.jsp");
		}
		
	}

}
