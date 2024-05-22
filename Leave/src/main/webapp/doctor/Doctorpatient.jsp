
<%@page import="com.pojo.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.pojo.doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient View</title>

<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${not empty succMsg }">
					
					<c:redirect url="../doctorlogin.jsp"></c:redirect>
					</c:if>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<h2 class="fs-3 text-center">Patient Details</h2>
						<c:if test="${not empty succMsg }">
							<h5 class="text-center text-danger fs-3">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<h5 class="text-center text-danger fs-3">${errorMsg}</h5>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile No</th>
									<th scope="col">Status</th>
					                <th scope="col">Action</th>
					                </tr>
					                </thead>
					                <tbody>
					                <%
					                  doctor d= (doctor)session.getAttribute("doctobj");
					                  AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
					                 List<Appointment> list= dao.getAllAppointmentDoctor(d.getId());
					                 for(Appointment ap:list)
					                 {
					                %>
					                <tr>
					                <th><%=ap.getFullName() %></th>
					                <td><%=ap.getGender()%></td>
					                <td><%=ap.getAge() %></td>
					                <td><%=ap.getAppoinDate()%></td>
					                <td><%=ap.getDiseases() %></td>
					                <td><%=ap.getEmail() %></td>
					                <td><%=ap.getPhno() %></td>
					                <td><%=ap.getStatus() %></td>
					                <td><a href="comment.jsp?id=<%=ap.getId() %>" class="btn btn-success btn-sm">Comment</a></td></tr>
					                <% }
							
							%>
							</tbody>
							</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>