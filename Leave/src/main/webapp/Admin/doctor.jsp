<%@page import="com.pojo.doctor"%>
<%@page import="com.dao.doctordaoa"%>
<%@page import="com.pojo.specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.SpecilaistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">

<div class="caontainer">
		<div class="col-md-5 offset-md-4 ">
			
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
					<h4 class="text-center">Add Doctor Details</h4>
						<form action="../adddoctor" method="post"
						 >
							<div class="mb-4">
								<label for="exampleInputEmail1">Full Name*</label> <input
									name="fullName" type="text" class="form-control"
									>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">DOB*</label> <input
									name="dob" type="date" class="form-control"
									>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Qualification</label> <input
									name="quali" type="text" class="form-control"
									>
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Specialist</label> <select
									id="inputState" name="spec" class="form-control">
									<option >---Select---</option>
									<%SpecilaistDao dao=new SpecilaistDao(DBConnect.getConn());
										List<specalist>list=dao.getallspecialist();
										for(specalist s:list)
										{%>
							
											<option><%=s.getSpecialistName()%></option>
										<% }
										%>
									
								</select>
							</div>
                                  <div class="form-group">
								<label for="exampleInputEmail1">Email</label> <input
									required name="email" type="email" class="form-control"
									>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Mobile Number*</label> <input
									name="mobno" type="number" class="form-control"
							     >
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Password</label> <input
									name="password" type="password" class="form-control"
									>
							</div>
							<button type="submit" class="btn btn-primary">Add</button>
						</form>
					</div>
				</div>
			</div>
			</div>
			
			
			</div>
		

</body>
</html>