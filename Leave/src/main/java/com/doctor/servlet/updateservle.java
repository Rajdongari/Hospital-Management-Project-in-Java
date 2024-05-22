package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.dbcon.DBConnect;


@WebServlet("/comment")
public class updateservle extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			int id=Integer.parseInt(request.getParameter("id"));
			int did=Integer.parseInt(request.getParameter("doctor_id"));
			String comm=request.getParameter("comm");
			AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
			HttpSession session=request.getSession();
			if(dao.updatecomment(id, did, comm))
			{
			   session.setAttribute("succMsg","Comment Updated");
			   response.sendRedirect("doctor/Doctorpatient.jsp");
				
			}else
			{
				session.setAttribute("errorMsg","Comment Not Updated");
				  response.sendRedirect("doctor/Doctorpatient.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
