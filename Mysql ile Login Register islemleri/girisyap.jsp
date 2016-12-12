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
<title>Giris Yap</title>
</head>
<body>
<div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header">
			<h1 class="text-center"></h1>
		</div>
		<div class="modal-body">
			<form class="col-md-12 center-block" method="post" action="login.jsp">
				<div class="form-group">
					<input type="text" class="form-control input-lg" name="uname" placeholder="Kullanici Adi" value="" />
				</div>
				<div class="form-group">
					<input type="password" class="form-control input-lg" name="pass" placeholder="Parola"/>
				</div>
				<div class="form-group">
					<input type="submit" class="btn btn-block btn-lg btn-primary" value="Giris Yap" />
					<span class="pull-right"><a href="reg.jsp">Kayit Ol</a></span>
				</div>
			</form>
			<div id="modal-footer">
				<button class="btn"><a href="index.jsp">Cancel</a></button>
			</div>
		</div>
     </div>
</div>
</body>
</body>
</html>
