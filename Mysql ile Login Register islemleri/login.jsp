<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/databasename","root", "dbpass");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from kullanicilar where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
    	session.setAttribute("userid", userid);
    	if(userid.equals("admin")&&pwd.equals("admin"))
    	{
    		response.sendRedirect("adminpanel.jsp");
    	}
    	else
    	{
    		response.sendRedirect("success.jsp");
    	}
    } else {
        out.println("Gecersiz kullanici adi veya parola <a href='index.jsp'>Lutfen tekrar deneyiniz</a>");
    }
%>
