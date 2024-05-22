package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.dbcon.DBConnect;
import com.pojo.Appointment;

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid=Integer.parseInt(request.getParameter("userId"));
	 String FullName=request.getParameter("fullname");
	 String gender=request.getParameter("gender");
	 String age=request.getParameter("age");
	 String appoinDate=request.getParameter("appoint_date");
	 String email=request.getParameter("email");
	 String phno=request.getParameter("phno");
	String diseases=request.getParameter("dieases");
	int doctorid=Integer.parseInt(request.getParameter("doct"));
    String address=request.getParameter("address");
    Appointment ap=new Appointment(userid, FullName, gender, age, appoinDate, email, phno, diseases, doctorid, address,"Pending");
    AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
    HttpSession session=request.getSession();
    if(dao.addAppointment(ap))
    {
    	session.setAttribute("succMsg","Appointment Submitted Successfully");
    	response.sendRedirect("Appointment.jsp");
    }else
    {
    	session.setAttribute("errorMsg","Appointment Submitted Successfully");
    	response.sendRedirect("Appointment.jsp");
    	
    }
    		
	}

}
