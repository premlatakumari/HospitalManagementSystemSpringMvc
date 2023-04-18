<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New | Hospital Management System</title>
</head>
<body>
	<div class="container pb-5 p-3 mb-2 ">
		<h3 class="text-center">Add A New Patient</h3>
		<form class="form" method="POST" action="patient">
			<div class="form-group">
				<label for="name">Name</label> <input type="text" name="name"
					id="name" class="form-control" placeholder="Your name" required />
			</div>
			<div class="form-group">
				<label for="email">Date Of Birth</label> <input type="text"
					name="dob" id="dob" class="form-control"
					placeholder="Your Date of birth" required />
			</div>
			<div class="form-group">
				<label for="email">Address</label> <input type="text" name="address"
					id="address" class="form-control" placeholder="Your address"
					required />
			</div>
			<div class="form-group">
				<p>Gender</p>
				<div class="form-check ">
					<input class="form-check-input" type="radio" name="gender"
						id="femaleRadioBtn" value="Female" checked /> <label
						class="form-check-label" for="femaleRadioBtn">Female</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="maleRadioBtn" value="Male" /> <label class="form-check-label"
						for="maleRadioBtn">Male</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="gender"
						id="otherRadioBtn" value="Other"> <label
						class="form-check-label" for="otherRadioBtn">Other /
						Rather not specify</label>
				</div>
			</div>

			<div class="form-group">

				<label for="description">Disease Description</label>

				<textarea class="form-control" name="description"
					id="description" rows="5" placeholder="Enter the product description">
					</textarea>
				</div>

			<input type="submit" value="Add Patient"
				class="btn btn-primary col-mid-1 text-center" /> <br />
		</form>
	</div>

	<script>
		$(document).ready(function() {
		    $(".languages-multiple-select").select2({
			    placeholder: "Select the preferred languages",
				width: "resolve"
			})
		});
	</script>
</body>
</html>