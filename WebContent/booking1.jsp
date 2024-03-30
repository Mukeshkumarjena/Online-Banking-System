<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
Random rand = new Random();
int n = rand.nextInt(900000000) + 1000;
System.out.println(n);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Custom-Style-Sheet -->
<link rel="stylesheet" href="css1/bootstrap.min.css"	type="text/css" media="all">
<link rel="stylesheet" href="css1/style.css"			type="text/css" media="all">
<!-- //Custom-Style-Sheet -->

<!-- Fonts -->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900"		type="text/css" media="all">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Montserrat:400,700"					type="text/css" media="all">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"	type="text/css" media="all">
<!-- //Fonts -->
<style>
.header img {
  float: left;
  width: 250px;
  height: 180px;
  background: #555;
  border-radius: 25em;
}
</style>
</head>
<body>
<%
String s1=(String)session.getAttribute("username");
%>
<div class="header">
  <img src="images1/r0.jpg" alt="logo" />
  <br>
</div>
   <h1><u>Account Opening Form</u></h1>
		<div class="agileitscontainerwthree">
			<form  action="formdata" method="post">
			 <marquee><FONT COLOR="CYAN">PLEASE NOTE YOUR Account  <u>NUMBER</u>.</FONT></marquee><BR><BR>
				<fieldset>
					<legend class="section-title aits">Your Information</legend>
					<div class="section agileinfo row">
						<fieldset>RT66VG V                                                     
							<div class="form-group wthree col-md-4">
								<label class="control-label" for="first-name-1">ACCOUNT NO</label>
								<input class="form-control" id="first-name-1" name="regid" value="<%=n%>" type="text" maxlength="50" required>
							</div>
							<div class="form-group w3-agile col-md-4">
								<label class="control-label" for="initial-1">Name </label>
								<input class="form-control" id="initial-1" name="name" value="<%= s1 %>" type="text" maxlength="50">
							</div>
							<div class="form-group w3layouts col-md-4">
								<label class="control-label" for="last-name-1">Contact no.</label>
								<input class="form-control" id="last-name-1" name="ucontact" value="" type="text" maxlength="50" required>
							</div>
						</fieldset>
					</div>
					<fieldset>
					<legend class="section-title aits">Guardian Information</legend>
					<div class="section agileinfo row">
						<fieldset>
							<div class="form-group wthree col-md-4">
								<label class="control-label" for="first-name-1">gName</label>
								<input class="form-control" id="first-name-1" name="gname" value="" type="text" maxlength="50" required>
							</div>
							<div class="form-group w3-agile col-md-4">
								<label class="control-label" for="initial-1">gContact no.</label>
								<input class="form-control" id="initial-1" name="gcontact" value="" type="text" maxlength="50">
							</div>
							<div class="form-group w3layouts col-md-4">
								<label class="control-label" for="last-name-1">gAddress</label>
								<input class="form-control" id="last-name-1" name="gaddress" value="" type="text" maxlength="50" required>
							</div>
							<div class="form-group w3layouts col-md-4">
								<label class="control-label" for="last-name-1">gAddress</label>
								<input class="form-control" id="last-name-1" name="gaddress" value="" type="text" maxlength="50" required>
							</div>
						</fieldset>
					
				<br><br>
				<input type="checkbox"  required>&nbsp;<font color="white">I AGREE TO THE ABOVE TERMS & CONDITION.</font>
				<div class="form-group w3-agile">
					<button type="submit" value="Submit" class="btn btn-lg agile btn-primary submit">Submit</button>
				</div>
			</form>
		</div>

		<div class="w3lsfooteragileits">
			<p> &copy; 2017 Valid Address Form. All Rights Reserved | Design by <a href="http://w3layouts.com" target="=_blank">Jaydev Sahoo</a></p>
		</div>



		<!-- Necessary-JavaScript-Files-&-Links -->

			<script src="http://codeorigin.jquery.com/jquery-1.11.3.min.js"></script>
			<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js1/bootstrap.min.js"></script>
			<script src="js1/jq.progress-bar.js"></script>
			<script>
				$(document).ready(function() {
					$('#test_form').showProgress();
				});
			</script>

		<!-- //Necessary-JavaScript-Files-&-Links -->



	</body>
</html>