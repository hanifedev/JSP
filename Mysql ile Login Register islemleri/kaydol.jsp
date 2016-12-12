<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Kayit Ol</title>
</head>
<body>	
<div class="container">
	<div class="modal-dialog">
			<div class="modal-header">
				<h1 class="text-center">Kayit Ol</h1>
			</div>
			<div class="modal-body">
				<form class="col-md-6 center-block" method="post" action="registiration.jsp">
					<div class="form-group">
						<label for="fname">Isim:</label>
						<input type="text" name="fname" class="form-control">
					</div>
					<div class="form-group">
						<label for="lname">Soyisim:</label>
						<input type="text" name="lname" class="form-control">	
					</div>
					<div class="form-group">
						<label for="lname">Email:</label>
						<input type="text" name="email" class="form-control">	
					</div>
					<div class="form-group">
						<label for="lname">Kullanici Adi:</label>
						<input type="text" name="uname" class="form-control">	
					</div>
					<div class="form-group">
						<label for="lname">Parola:</label>
						<input type="password" name="pass" class="form-control">	
					</div>
					<div class="form-group">
						<button type="submit" name="Submit" class="btn btn-primary">Kaydol</button>
					</div>
				</form>
			</div>
	     </div>
</div>
</body>
</html>
