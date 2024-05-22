package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.doctordaoa;
import com.dbcon.DBConnect;

@WebServlet("/deleteDoctor")
public class deleteDoctor extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		doctordaoa d=new doctordaoa(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(d.delete(id))
		{
			session.setAttribute("succMsg","Doctor Details Deleted");
			response.sendRedirect("Admin/viewdoctor.jsp");
		}else
		{
			session.setAttribute("errorMsg","try again");
			response.sendRedirect("Admin/viewdoctor.jsp");
			
		}
	}

}
