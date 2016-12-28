<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Panel</title>
</head>
<body> 	
<form method="post" action="add_cat12.jsp">
	<table border="2" align="center" cellpadding="7" cellspacing="7">
		<tr>
			<td><strong>Kategori Ekle</strong></td>
			<td><input type="text" name="cat" id="cat"><br>
			<input type="submit" value="Ekle"></td>
		</tr>
	</table>
</form>
<h1 align="center">Urun Ekle</h1>
<p align="center"></p>
<form method="post" action="item_add.jsp">
	<table border="2" align="center" cellpadding="7" cellspacing="7">
		<tr>
		<td width="309"><strong>Kategori Seciniz:</strong></td>
		<td width="277"><select name="cat">
		<option value="" selected>--Sec--</option>
		<%
			try
		{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","dbkullanici", "dbpass");
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("Select * from cat_tab");
				while(rs.next())
				{
		%>
		<option value="<%String catg12=rs.getString(1); out.print(catg12); %>"><% out.print(catg12); %></option>
		<%
				}
				out.print("<select>");
			}
				catch(Exception e)
				{
					out.println("Veri eklenemedi");
				}
		%>
		</td>
		</tr>
		<tr>
			<td><strong>Urun Ekle:</strong></td>
			<td><input type="text" name="item" id="item"></td>
		</tr>
		<tr>
			<td><strong>Tane:</strong></td>
			<td><input type="text" name="quan" id="quan"></td>
		</tr>
		<tr>
			<td><strong>Fiyat:</strong></td>
			<td><input type="text" name="cost" id="cost"></td>
		</tr>
		<tr>
			<td><input type="submit" value="Ekle">
			<input type="reset" name="Reset" id="button" value="Reset"></td>
		</tr>
	</table>
</form>
</body>
</html>
