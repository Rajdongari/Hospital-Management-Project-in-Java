<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.doctordaoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="../component/allcss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${ empty adminobj }">

		<c:redirect url="../adminlogin.jsp"></c:redirect>
	</c:if>
	<h3 class="text-center fs-3">Admin DashBoard</h3>

	<c:if test="${not empty succMsg }">
		<p class=" fs-3 text-center text-success fs-3">${succMsg}</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty errorMsg }">
		<p class="fs-3 text-center text-danger fs-3">${errorMsg}</p>
		<c:remove var="errorMsg" scope="session" />
	</c:if>

	<div class="container p-5">

		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-5x"></i><br>
						<h3 class="fs-4 text-center">
						<% doctordaoa dao=new doctordaoa(DBConnect.getConn());%>
							Doctor<br><%=dao.countDoctor() %>
						</h3>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-primary">
						<i class="fas fa-calendar-check fa-5x"></i><br>
						<h3 class="fs-4 text-center">
							Total Appoinment <br><%=dao.countappointment() %>
						</h3>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-danger">
						<i class="fas fa-user-circle fa-5x"></i><br>
						<h3 class="fs-4 text-center">
							Total User <br> <%=dao.countuser() %>
						</h3>
					</div>
				</div>
			</div>
			<div class="col-md-4 mt-2">
				<div class="card paint-card" data-toggle="modal"
					data-target="#exampleModal">
					<div class="card-body text-center text-warning">
						<i class="fas fa-calendar-check fa-5x"></i><br>
						<h3 class="fs-4 text-center">
							Total Specialist Available <br> <%=dao.countspecalist()%>
						</h3>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Add Specialist
						n</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="../addspecial" method="post">
						<div class="form group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control">
						</div>
						<div class="text-center mt-4">
							<button type="submit" class="btn btn-primary">Add</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>
</body>
</html>