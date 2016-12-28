package com.controller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.database.*;
import com.model.*;

/**
 * Servlet implementation class Usercontroller
 */
@WebServlet("/Usercontroller")
public class Usercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		 // 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String errorMessage="";
		 User user =new User();
		 user.setYetki(-1);
		 Connection con=null;
		 String username= request.getParameter("username");
		 String password = request.getParameter("password");
		 try {
			con=Databaseutility.getConnection();			
			user= UserDao.userControl(username, password, con);
			} 
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.getWriter().println(e.getMessage());
			errorMessage = e.getMessage();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.getWriter().println(e.getMessage());
			errorMessage = e.getMessage();
		}
		 
		 //DAO kullanýlarak user kontrol iþlemi yapýlýr ve ilgili sayfaya yetkili yönlendirme yapýlýr 
		 int yetki = -1;  // yetki deðeri  veritabanýnda gelen deðere göre belirlenir   
		 
		 request.setAttribute("username", user);
		 request.setAttribute("errorMessage", errorMessage);
		 if(user!=null)
		 {
			 yetki= user.getYetki();
		 }		 
		 
		 if (yetki==2)  // normal kullanici
		 {
			 RequestDispatcher dispatcher =  request.getRequestDispatcher("girisindex.jsp");
			 dispatcher.forward(request, response);
		 }
		 else if (yetki==1) // admin
		 {
			 RequestDispatcher dispatcher =  request.getRequestDispatcher("adminpanel.jsp");
			 dispatcher.forward(request, response); 
		 }
		 else
		 {
			 RequestDispatcher dispatcher =  request.getRequestDispatcher("Error.jsp");
			 dispatcher.forward(request, response); 
		 }	 
	}
}
