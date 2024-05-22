<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp" %>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${not empty succMsg }">
					
					<c:redirect url="../doctorlogin.jsp"></c:redirect>
					</c:if>
					<div class="container p-5">
	
	<div class="row">
		<div class="col-md-4 offset-md-2">
			<div class="card paint-card">
				<div class="card-body text-center text-warning">
					<i class="fas fa-user-md fa-5x"></i><br>
					<h3 class="fs-4 text-center">Doctor<br>100</h3>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-primary">
					<i class="fas fa-calendar-check fa-5x"></i><br>
					<h3 class="fs-4 text-center">Total Appoinment<br>50</h3>
				</div>
			</div>
		</div>
		
		
	</div>
	</div>

					
						
</body>
</html>