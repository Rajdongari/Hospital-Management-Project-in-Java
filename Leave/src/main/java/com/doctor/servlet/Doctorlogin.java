package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.doctordaoa;
import com.dao.userDao;
import com.dbcon.DBConnect;
import com.pojo.doctor;
@WebServlet("/Doctorlgn")
public class Doctorlogin extends HttpServlet {


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		doctordaoa dao=new doctordaoa(DBConnect.getConn());
		 doctor doctorr=dao.login(email, password);
		 if((doctorr!=null))
			{
				session.setAttribute("doctobj",doctorr);

				response.sendRedirect("doctor/index.jsp");
			}else
			{
				session.setAttribute("errorMsg","Invalid details");
				response.sendRedirect("doctorlogin.jsp");
			}
			
		}
	}


