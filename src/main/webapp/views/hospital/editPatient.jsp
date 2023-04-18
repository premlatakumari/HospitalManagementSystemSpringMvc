<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Edit | Hospital Management System</title>
</head>
<body>
	<jsp:include page="../base.jsp"></jsp:include>
	
	<div class="container">
		<h3 class="text-center">Edit Patient Profile</h3>
		
		<form class="form" action="${pageContext.request.contextPath}/patient" method="post">
			
			
		
			<table class="table table-striped">
				<tr>
					<th>Patient ID</th>
					<td>
						<input type="text" name="id" class="form-control" value="${ patient.id }" />
					</td>
				</tr>
				<tr>
					<th>Name</th>
					<td>
						<input type="text" name="name" class="form-control" value="${ patient.name }" />
					</td>
				</tr>
				<tr>
					<th>Date of birth</th>
					<td>
						<input type="text" name="dob" class="form-control" value="${ patient.dob }" />
					</td>
				</tr>
				<tr>
					<th>Address</th>
					<td>
						<input type="text" name="address" class="form-control" value="${ patient.address }" />
					</td>
				</tr>
				<tr>
					<th>Gender</th>
					<td>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="femaleRadioBtn" value="Female" ${ patient.gender == 'Female' ? 'checked' : '' } />
							<label class="form-check-label" for="femaleRadioBtn">Female</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="maleRadioBtn" value="Male" ${ patient.gender == 'Male' ? 'checked' : '' } />
							<label class="form-check-label" for="maleRadioBtn">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="otherRadioBtn" value="Other" ${ patient.gender == 'Other' ? 'checked' : '' } >
							<label class="form-check-label" for="otherRadioBtn">Other / Rather not specify</label>
						</div>
					</td>
				</tr>
				<tr>
					
				</tr>
				<tr>
					<th>Disease Description</th>
					<td>

					<textarea class="form-control" name="description"
					id="description" rows="5" placeholder="Enter the product description">${ patient.description }
					</textarea>
				
					</td>
				</tr>
				<tr>
					<th></th>
					<td>
						<input type="submit" value="Update Patient" class="btn btn-primary" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<script>
		$(document).ready(function() {
		    $(".languages-multiple-select").select2({
				width: "resolve",
			})
		});
	</script>
</body>
</html>