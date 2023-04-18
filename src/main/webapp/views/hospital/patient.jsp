<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Hospital | Hospital Management System</title>
</head>
<body>
	<jsp:include page="../base.jsp"></jsp:include>
	
	<div class="container">
		<h3 class="text-center">Registered Patients</h3>
		
		
		<table class="table">
		<thead class="table-dark">
			<tr >
				<th>Patient ID</th>
				<th>Name</th>
				<th>Date Of Birth</th>
				<th>Address</th>
				<th>Gender</th>
				<th>Description</th>
				<th></th>
				<th></th>
			</tr>
			</thead>
			<c:if test="${ !patient.isEmpty() }">
				<c:forEach items="${ patient }" var="patient">
					<tr>
						<td>119091${ patient.id }</td>
						<td>${ patient.name }</td>
						<td>${ patient.dob }</td>
						<td>${ patient.address }</td>
						<td>${ patient.gender }</td>
						<td>${ patient.description }</td>
						<th>
							<a href=update/${patient.id} class="text-success">
								Edit
							</a>
						</th>
						<th>
							<a href="remove/${patient.id}" class="text-danger">
								Remove
							</a>
						</th>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>