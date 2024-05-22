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
import com.pojo.doctor;


@WebServlet("/updatedoctor")
public class updatedoctor extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		String fullName=request.getParameter("fullName");
		String DOB=request.getParameter("dob");
		String qualification=request.getParameter("quali");
		String spec=request.getParameter("spec");
		String email=request.getParameter("email");
		String mobno=request.getParameter("mobno");
		String password=request.getParameter("password");
		int id=Integer.parseInt(request.getParameter("id"));
		doctor d=new doctor(id,fullName,DOB,qualification,spec,email,mobno,password);
	    doctordaoa dao=new doctordaoa(DBConnect.getConn());
	    HttpSession session=request.getSession();
	    if(dao.updateDoctor(d))
	    {
	    	session.setAttribute("succMsg","Doctor Details updated");
	    	response.sendRedirect("Admin/viewdoctor.jsp");
	    }else
	    {
	    	session.setAttribute("errorMsg","try again");
	    	response.sendRedirect("Admin/viewdoctor.jsp");
			
	    }

		
	} catch (Exception e) {
		// TODO: handle exception
	}
	}

}
