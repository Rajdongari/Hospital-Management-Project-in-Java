<%@page import="com.pojo.specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecilaistDao"%>
<%@page import="com.pojo.doctor"%>
<%@page import="com.dbcon.DBConnect"%>
<%@page import="com.dao.doctordaoa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Doctor</title>
</head>
<body>
<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">

<div class="caontainer">
		<div class="col-md-4 offset-md-4 ">
			
				<div class="card paint-card">
					<div class="card-body">
					<h4 class="text-center">Edit Doctor</h4>
				<%
				int id=Integer.parseInt(request.getParameter("id"));
				doctordaoa dao2=new doctordaoa(DBConnect.getConn());
				doctor d=dao2.getDoctorById(id);
				
				
				%>
					
						<form action="../updatedoctor" method="post">
						 <input type="hidden" name="id" value="<%=d.getId()%>">
							<div class="mb-4">
								<label for="exampleInputEmail1">Full Name*</label> <input
									name="fullName" type="text" class="form-control"
									value="<%=d.getFullName() %>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">DOB*</label> <input
									name="dob" type="date" class="form-control"
									value="<%=d.getDob() %>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Qualification</label> <input
									name="quali" type="text" class="form-control"
									value="<%=d.getQualification()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Specialist</label> <select
									id="inputState" name="spec" class="form-control">
									<option ><%=d.getSpecialist() %></option>
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
								<label for="exampleInputEmail1">Email*</label> <input
									required name="email" type="email" class="form-control"
									value="<%=d.getEmail()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Mobno*</label> <input
									name="mobno" type="number" class="form-control"
							     value="<%=d.getMobno() %>">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Password</label> <input
									name="password" type="password" class="form-control"
									value="<%=d.getPassword() %>">
							</div>
							
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
			</div>
			</div>
</body>
</html>