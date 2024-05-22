<%@page import="java.util.List"%>
<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.doctordaoa"%>
<%@page import="com.pojo.doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment</title>
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
			<div class="col-md-6 p-5">
				<img alt="" src="img/docter.png">
			</div>


			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<h4 class="text-center fs-3">User Appointment</h4>
						<c:if test="${not empty succMsg }">
							<h5 class="text-center text-danger fs-3">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<h5 class="text-center text-danger fs-3">${errorMsg}</h5>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<form class="row g-3" action="AppointmentServlet" method="post">

							<input type="hidden" name="userId" value="${userobj.id }">

							<div class="col-md-6">
								<label class="form-label">Full Name</label> <input required
									name="fullname" type="text" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Gender</label> <select
									class="form-control" name="gender" required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>
							<div class="col-md-6">
								<label class="form-label">Age</label> <input required name="age"
									type="number" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Appointment Date</label> <input
									required name="appoint_date" type="date" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Email</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Phone No</label> <input required
									maxlength="10" name="phno" type="number" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Dieases</label> <input required
									name="dieases" type="text" class="form-control">
							</div>
							<div class="col-md-6">
								<label class="form-label">Doctor</label> <select
									class="form-control" name="doct" required>
									<option value="">--select--</option>
									<%doctordaoa dao=new doctordaoa(DBConnect.getConn());
									List<doctor> list=dao.getAlldoctor();
									for(doctor d:list)
									{%>
									<option value="<%=d.getId() %>"><%=d.getFullName() %>(<%=d.getSpecialist() %>)</option>
										
									<% }
									
									%>
									
								</select>
							</div>
							<div class="col-md-12">
								<label>full Addresss</label>
								<textarea required name="address" class="form-control" rows="3"
									cols=""></textarea>
							</div>
							<c:if test="${empty userobj }">
							<a href="userlogin.jsp"
							class="col-md-6 offset-md-3 mt-4 btn btn-success">Submit</a>
							
							</c:if>
							<c:if test="${not empty userobj }">
							<button class="col-md-6 offset-md-3 mt-4 btn btn-success">Submit</button>
							
							</c:if>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>