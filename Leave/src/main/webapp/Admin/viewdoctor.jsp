<%@page import="com.pojo.doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.doctordaoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<meta charset="UTF-8">
<title></title>
</head>
<body>

		
					<%@include file="navbar.jsp"%>
			<div class="col-md-12">
			<div class="card paint-card">
			<div class="card-body">
			
					<c:if test="${not empty succMsg }">
					<h5 class="text-center text-success">${succMsg }</h5>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					<c:if test="${not empty errorMsg }">
					<h5 class="text-center text-danger">${errorMsg }</h5>					
					<c:remove var="errorMsg" scope="session"/>
					</c:if>
			<h4 class="fs-3 text-center">Doctor Details</h4>
			<table class="table">
			<thead>
			<tr>
			<th scope="col">Full Name</th>
				<th scope="col">DOB</th>
					<th scope="col">Qualification</th>
						<th scope="col">Specialist</th>
							<th scope="col">Email</th>
						<th scope="col">Mob no</th>
							<th scope="col">Action</th>		</tr>
			</thead>
			<tbody>
			<%
			doctordaoa dao2=new doctordaoa(DBConnect.getConn());
					List<doctor> list1=dao2.getAlldoctor();
					for(doctor d:list1)
					{%>
				<tr>
				<td><%=d.getFullName() %></td>
				<td><%=d.getDob() %></td>
				<td><%=d.getQualification() %></td>
				<td><%=d.getSpecialist() %></td>
				<td><%=d.getMobno() %></td>
				<td><%=d.getEmail() %></td>
				
				
				<td>
				<a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
				<a href="../deleteDoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a>
				</tr>	
					<% }%>
			
			
			
			</tbody>
			</table>
			</div>
			
			
			</div>
		</div>

</body>
</html>