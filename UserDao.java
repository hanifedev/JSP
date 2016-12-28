package com.database;

import java.sql.*;
import com.model.*;


public class UserDao {
	
	
	public static User userControl(String username, String password, Connection con) throws SQLException
	{
		 User user = new User();	 
		 String selectSQL = "select username, yetki from users where username= ? and password= ?";
		 PreparedStatement preparedStatement = con.prepareStatement(selectSQL);
		 preparedStatement.setString(1, username);
		 preparedStatement.setString(2, password);
		 ResultSet rs = preparedStatement.executeQuery();
		 while (rs.next()) {
		 	String usr = rs.getString("username");
		 	int yetki = rs.getInt("yetki");
		 	user.setUsername(usr);
			user.setYetki(yetki);
		 }
		con.close();
		return user;
	}
}
