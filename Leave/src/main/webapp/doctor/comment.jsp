<%@page import="com.pojo.Appointment"%>
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
<title>Comment page</title>
<%@include file="../component/allcss.jsp"%>
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
	<%@include file="navbar.jsp"%>
	<c:if test="${not empty succMsg }">

		<c:redirect url="../doctorlogin.jsp"></c:redirect>
	</c:if>
	<div class="container-fluid backImg p-5">
		<h5 class="text-center fs-2 text-white"></h5>
	</div>
	<div class="container p-3">

		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-body">
				<div class="card-body">
					<h3 class="text-center fs-4">Patient Comment</h3>
					
						
					<%int id=Integer.parseInt(request.getParameter("id"));
			  AppointmentDao daoo=new AppointmentDao(DBConnect.getConn());
			  Appointment ap= daoo.getAppointmentbyid(id);
			
			
			
			%>	
					<form action="../comment" method="post" class="row">
						<div class="col-md-6">
							<label>Patient Name</label><input type="text" readonly value="<%=ap.getFullName()%>"
								class="form-control">
				
								
								
						</div>

						<div class="col-md-6">
							<label>Age</label><input type="text" readonly value="<%=ap.getAge() %>"
								class="form-control">
						</div>

						<div class="col-md-6">
							<br>
							<label class="form-label">Mobile No</label><input type="text"
								readonly value="<%=ap.getPhno() %>" class="form-control">
						</div>

						<div class="col-md-6">
							<br>
							<label class="form-label">Dieases</label><input type="text"
								readonly value="<%=ap.getDiseases() %>" class="form-control">
						</div>

						<div class="col-md-12">
							<br><label>Comment</label>
							<textarea required name="comm" rows="3" cols="" class="form-control"></textarea>
						</div>
						<input type="hidden" name="id" value="<%=ap.getId() %>"> <input
							type="hidden" name="doctor_id" value="<%=ap.getDoctorid()%>">
						<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
					</form>
</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>