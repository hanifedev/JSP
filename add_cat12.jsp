<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<body>
<%
String cat=request.getParameter("cat");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","dbkullanici", "dbpass");
	Statement st=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	ps=con.prepareStatement("Select * from cat_tab where category='" + cat + "'");
	rs=ps.executeQuery();
	if(rs.next())
	{
		out.println("Bu kategori zaten var");
	}
	else
	{
		String query="insert into cat_tab values('"+cat+"')";
		ps=con.prepareStatement(query);
		ps.executeUpdate();
		out.println("Eklendi");
	}
}
	catch(Exception e)
	{
		out.println("Veri eklenemedi");
	}
%>
</body>
