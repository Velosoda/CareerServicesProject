package com.careerServices.MainApp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

public class ServletLogin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public ServletLogin() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		request.getRequestDispatcher("View/login.jsp").forward(request, response);
	}
	public static boolean validate(String username, String pwd) 
	{
		boolean status=false;
		String url = "jdbc:mysql://sql9.freemysqlhosting.net:3306/sql9142409";
        String usname = "sql9142409";
        String password = "vjUyLx6eNN";
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(url,usname,password);  
			      
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from user where username=? and pwd=?");  
			ps.setString(1,username);  
			ps.setString(2,pwd);  
		  
			ResultSet rs=ps.executeQuery();  
			status=rs.next();         
		}
		catch(Exception e)
		{
			System.out.println(e);
		}  
			return status;  
	}
}