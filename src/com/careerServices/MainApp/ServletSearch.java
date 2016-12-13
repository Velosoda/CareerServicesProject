package com.careerServices.MainApp;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ServletSearch extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public ServletSearch() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		DB database = new DB();
		ArrayList<ModelSearchResults> results = new ArrayList<ModelSearchResults>();
		try
		{
			String searchType = request.getParameter("select");
			String info = request.getParameter("typing");
			System.out.println(searchType+" "+info);
			Connection conn = database.getDataSource().getConnection();
			Statement stmt = conn.createStatement();
			String a = "Select * from student_form where " + searchType + " = '" + info + "' and Approved = False";
			System.out.println(a);
			ResultSet rs = stmt.executeQuery(a);
			while(rs.next())
			{	
				ModelSearchResults msr = new ModelSearchResults();
				msr.setDbId(rs.getString(1));
				msr.setID(rs.getString(2));
				msr.setName(rs.getString(3));
				msr.setEmail(rs.getString(4));
				msr.setPhone_Number(rs.getString(5));
				msr.setArrival(rs.getString(6));
				msr.setVisitType(rs.getString(7));
				msr.setEnrollmentTime(rs.getString(8));
				msr.setEnrollmentStatus(rs.getString(9));
				msr.setCareer(rs.getString(10));
				msr.setCareer_Counseling(rs.getString(11));
				msr.setCops_Test(rs.getString(12));
				msr.setCover_Letter(rs.getString(13));
				msr.setInternship_Information(rs.getString(14));
				msr.setJob_Searching(rs.getString(15));
				msr.setJunior_Seminar(rs.getString(16));				
				msr.setMock_Interview(rs.getString(18));
				msr.setMyers_Briggs(rs.getString(19));
				msr.setResume(rs.getString(17));
				msr.setSenior_Seminar(rs.getString(20));
				msr.setSophomore_Seminar(rs.getString(21));
				msr.setTransition_To_Kean(rs.getString(22));																
				msr.setSemester(rs.getString(25));
				msr.setComment(rs.getString(26));
				results.add(msr);
			}
			stmt.close();
			conn.close();
			rs.close();
		} 
		catch (SQLException e) 
		{
			
		}
		request.setAttribute("results", results);
		request.getRequestDispatcher("/View/searchResults.jsp").forward(request, response);
	}

}
