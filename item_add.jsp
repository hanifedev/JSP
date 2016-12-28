<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<body>
<% 
	String cat=request.getParameter("cat");
	String item=request.getParameter("item");
	String quan=request.getParameter("quan");
	String cost=request.getParameter("cost");
	try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","dbkullanici", "dbpass");
		Statement st=null;
		Statement st2=con.createStatement();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Statement st1=con.createStatement();
		ResultSet rs1=st1.executeQuery("Select * from item_master where category='"+cat+"' and item_name='"+item+"'");
		if(rs1.next())
		{
			out.println("<center><h1>Bu item bu kategoride zaten var</center>");
		}
		else
		{
			String query2="insert into item_master values('"+cat+"','"+item+"','"+quan+"','"+cost+"')";
			out.println("<center><h1>Basariyla eklendi</h1></center>");
			st2.executeUpdate(query2);
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
