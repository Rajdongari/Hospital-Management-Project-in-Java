<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house-chimney-medical"></i>RD Hospital</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      <li class="nav-item active">
      <c:if test="${empty userobj }">
        <a class="nav-link active" aria-current="page" href="adminlogin.jsp"><i class="fas fa-sign-in-alt"></i>Admin</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link active"  href="doctorlogin.jsp">Doctor</a>
      </li>

      </li><li class="nav-item active">
        <a class="nav-link active"  href="userlogin.jsp">User</a>
      </li>
      </c:if>
      
      <c:if test="${not empty userobj }">
      <li class="nav-item active">
        <a class="nav-link active"  href="Appointment.jsp">Appointment</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link active"  href="viewappointment.jsp"><i class="fa-regular fa-address-card"></i>View Appointment</a>
      </li>
  <li class="nav-item active">
        <a class="nav-link active"  href="#"> <i class="fa-solid fa-circle-user"></i>${userobj.name }</a>
      </li>
 <li class="nav-item active">
        <a class="nav-link active"  href="userLogout">Logout</a>
      </li>
  

 
 

      
      
      </c:if>
    </ul>
    
  </div>
</nav>

</body>
</html>