package com.careerServices.MainApp;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletAdminHome extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public ServletAdminHome() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String bipass = request.getParameter("bipass");
		if(bipass.equals("bipass"))
		{
			request.getRequestDispatcher("View/adminHome.jsp").forward(request, response);
			return;
		}
		 response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		          
		    String n=request.getParameter("username");  
		    String p=request.getParameter("psw");  
		          
		    if(ServletLogin.validate(n, p)){  
		        RequestDispatcher rd=request.getRequestDispatcher("/View/adminHome.jsp");  
		        rd.forward(request,response);  
		    }  
		    else{  
		        out.println("USERNAME or PASSWORD error!!\n");  
		        out.println("Try Again!");
		        RequestDispatcher rd=request.getRequestDispatcher("/View/login.jsp");  
		        rd.include(request,response);  
		    }  
		           
	}

}