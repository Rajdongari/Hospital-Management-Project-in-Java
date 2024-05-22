package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecilaistDao;
import com.dbcon.DBConnect;
import com.pojo.user;


@WebServlet("/addspecial")
public class addspecialist extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String specName=request.getParameter("specName");
		SpecilaistDao dao=new SpecilaistDao(DBConnect.getConn());
		boolean f=dao.addspecial(specName);
		HttpSession session =request.getSession();
		if(f)
		{
			session.setAttribute("succMsg","Specialist Added");
			response.sendRedirect("Admin/adminDashboard.jsp");
		
		}else
		{
			session.setAttribute("errorMsg","try again");
			response.sendRedirect("Admin/adminDashboard.jsp");
		}
	}

}
