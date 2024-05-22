package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logout
 */
@WebServlet("/userLogout")
public class logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("userobj");
		session.setAttribute("succMsg","logout Successfully");
		response.sendRedirect("userlogin.jsp");
		
	}

}
