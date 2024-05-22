<%@page import="com.pojo.doctor"%>
<%@page import="com.mysql.cj.xdevapi.DbDoc"%>
<%@page import="com.dao.doctordaoa"%>
<%@page import="com.pojo.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<h2 class="fs-3 text-center">Patient Details</h2>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Email</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Address</th>
									<th scope="col">Status</th>
								</tr>

							</thead>
							<tbody>
							<%AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
							doctordaoa dao2=new doctordaoa(DBConnect.getConn());
							 List<Appointment> list=dao.getAllAppointment();
							 for(Appointment ap:list)
							 {
							  doctor d=dao2.getDoctorById(ap.getDoctorid());
							 
							 %>
								 <tr>
							<th><%=ap.getFullName() %></th>
							<td><%=ap.getGender() %></td>
							<td><%=ap.getAge() %></td>
							<td><%=ap.getAppoinDate() %></td>
							<td><%=ap.getDiseases() %></td>
							<td><%=ap.getEmail() %></td>
							<td><%=d.getFullName() %></td>
							<td><%=ap.getAddress() %></td>
							<td><%=ap.getStatus() %>
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