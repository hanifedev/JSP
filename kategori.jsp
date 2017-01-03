<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String uname=request.getParameter("userName");
	String driverName="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/";
	String dbname="shop";
	String username="root";
	String password="root";
	try
	{
		Class.forName(driverName);
	}
	catch(ClassNotFoundException e)
	{
		e.printStackTrace();
	}
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
%>

<!-- CONTENT  -->
<div class="brand-content">
  <div class="container">
  	<div class="row">
  	     <div class="col-md-4">      
  	      <ul class="list-group">
  	          <a href="#" class="list-group-item disabled">Ürünler</a>
	  	      <%
	  	        try
	  	      {
	  	        	con=DriverManager.getConnection(url+dbname,username,password);
	  	        	st=con.createStatement();
	  	        	String sql="select * from cat_tab";
	  	        	rs=st.executeQuery(sql);
	  	        	while(rs.next())
	  	        	{
	  	      %>
			 <a href="<%=rs.getString("link") %>" class="list-group-item"><%=rs.getString("category") %></a>
			    <%
  	        	}
  	        	con.close();
		  	      }
		  	    catch(Exception e)
		  	    {
		      	  e.printStackTrace();
       	        }
			  %>
		  </ul>
		  
		  	  <ul class="list-group">
  	          	<a href="#" class="list-group-item disabled">Son Eklenenler</a>
  	          	<%
		   try
  	      {
  	        	con=DriverManager.getConnection(url+dbname,username,password);
  	        	st=con.createStatement();
  	        	String sql="select * from item_master";
  	        	rs=st.executeQuery(sql);
  	        	while(rs.next())
  	        	{
		  %>
			  	<a href="<%=rs.getString("link") %>" class="list-group-item"><%=rs.getString("item_name") %></a>
			   <%
        	}
	        	con.close();
	      }
	      catch(Exception e)
	      {
	    	  e.printStackTrace();
	      }
		  %>
		  </ul> 
  	     </div>
</body>
</html>
