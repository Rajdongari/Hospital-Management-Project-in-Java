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


@WebServlet("/add")
public class userRegister extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			String Name=request.getParameter("fullname");
			String Email=request.getParameter("email");
			String Password=request.getParameter("password");
			user us=new user(Name, Email, Password);
			userDao dao=new userDao(DBConnect.getConn());
			HttpSession session=request.getSession();
			boolean f=dao.userRegister(us);

         if(f)
            {     
        	 session.setAttribute("succMsg","Register successfully");
        	 response.sendRedirect("signup.jsp");
            }else
            {
            	 session.setAttribute("errorMsg","Somethinh went wrong");
            	 response.sendRedirect("signup.jsp");
            }
			
		}catch(Exception e)
		{
			e.printStackTrace();
			
		}
	}

}
