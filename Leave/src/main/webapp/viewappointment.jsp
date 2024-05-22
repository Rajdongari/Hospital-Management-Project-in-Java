<%@page import="com.pojo.user"%>
<%@page import="com.pojo.doctor"%>
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
<title> View Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/hospital_logo.jpg");
	height: 20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<h5 class="text-center fs-2 text-white"></h5>
	</div>
	<c:if test="${not empty succMsg }">
					
					<c:redirect url="../userlogin.jsp"></c:redirect>
					</c:if>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9 ">
				<div class="card paint-card">
					<div class="card-body">
						<h5 class="fs-4 fw-bold text-center text-success">Appointment
							List</h5>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Diseases</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
								</tr>

							</thead>
							<tbody>
							<%
							
							user uid= (user)session.getAttribute("userobj");
							AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
							doctordaoa dao2=new doctordaoa(DBConnect.getConn());
							List<Appointment> list=dao.getAllAppointmentofuser(uid.getId());
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
							<td><%=d.getFullName() %></td>
							<td><%if("Pending".equals(ap.getStatus()))
								{%>
								<a href="#" class="btn btn-sm btn-warning">Pending</a>
								<%}else
								{%>
									<%=ap.getStatus() %>
									
								<%}
								
								
								%>
							</tr>
								
							<%}
							%>
							
						
							</tbody>
						</table>
					</div>

				</div>
			</div>
			<div class="col-md-3 p-3">
					<img alt="" src="img/doctor4.jpeg">
			</div>
		</div>
	</div>
</body>
</html>