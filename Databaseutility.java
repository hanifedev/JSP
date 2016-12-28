package com.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databaseutility {
	public final static String url = "jdbc:mysql://localhost:3306/shop";
	public final static String username = "dbkullanici";
	public final static String password = "dbparola";
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver"; 
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException
	{
		Class.forName(DRIVER_CLASS); 
		Connection con = null;
		con =DriverManager.getConnection(url,username,password);		
		return con;
	}
}
