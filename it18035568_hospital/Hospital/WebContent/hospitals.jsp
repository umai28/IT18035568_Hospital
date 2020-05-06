<%@page import="model.Hospital"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<head>
<meta charset="ISO-8859-1">
<title>Hospital Service Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/hospitals.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Hospitals Service</h1>
				<form id="formHospital" name="formHospital">
					Name: <input id="name" name="name" type="text"
						class="form-control form-control-sm"> <br>
					 Address: <input id="address" name="address" type="text"
						class="form-control form-control-sm"> <br>
					 Registration ID: <input id="regId" name="regId" type="text"
						class="form-control form-control-sm"> <br>
				     Telephone Number: 
				     <input id="teleNo" name="teleNo" type=text" class="form-control form-control-sm"> <br>
					 <input id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary">
					<input type="hidden"id="hidHospitalIDSave" name="hidHospitalIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
                <div id="alertError" class="alert alert-danger"></div>
				<br>
				<div id="divHospitalsGrid">
					<%
						Hospital hospitalObj = new Hospital();
						out.print(hospitalObj.readHospitals());
					%>
				</div>
			</div>
		</div>
	</div>

</body>
</html>