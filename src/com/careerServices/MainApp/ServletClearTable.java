package com.careerServices.MainApp;

import java.io.IOException;
import java.sql.*;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletClearTable")
public class ServletClearTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ServletClearTable() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		DB db = new DB();
		try
		{
			Connection conn = db.getDataSource().getConnection();
			Statement stTruncate = conn.createStatement();
			stTruncate.executeUpdate("TRUNCATE table student_form");
			Statement stAlter = conn.createStatement();
			stAlter.executeUpdate("Alter table student_form auto_increment = 1");
			conn.close();
			stTruncate.close();
			stAlter.close();
			String tableCleared = "The Database has been cleared";
			request.setAttribute("tableCleared", tableCleared);
			//add dummy record
			try
			{
				String id = "null";
				String name = "null";
				String email = "null";
				String phoneNumber = "null";
				//String arrival = request.getParameter("arrival");
				
				Calendar c = Calendar.getInstance();
				int hour = c.get(Calendar.HOUR_OF_DAY);
				int minute = c.get(Calendar.MINUTE);
				String arrival = Integer.toString(hour) +":"+Integer.toString(minute);
				System.out.println(arrival);
				
				String visitType = "null";
				String enTime = "null"; 
				String enStat = "null";
				String careerCounseling = "null";
				String jobSearching = "null";
				String resume = "null";
				String coverLetter = "null";
				String mockInterview = "null";
				String internshipInformation = "null";
				String transitionToKean = "null";
				String sophomoreSeminar = "null";
				String juniorSeminar = "null";
				String seniorSeminar = "null";
				String career = "null";
				String copsTest = "null";
				String myersbriggs = "null";
				String approved = "False";
				String semester = "null";
				
				String query = "insert into student_form (ID,Name,Email,Phone_Number,Arrival,VisitType,EnrollmentTime,EnrollmentStatus,Career_Counseling,Job_Searching,Resume,Cover_Letter,Mock_Interview,Internship_Information,Transition_to_Kean,Sophomore_Seminar,Junior_Seminar,Senior_Seminar,Career,Cops_Test,Myers_Briggs,Approved,Semester)"
						+ " values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
				Connection conn2 = db.getDataSource().getConnection(); //create connection
				System.out.println("connected");
				PreparedStatement insert = conn2.prepareStatement(query);
				insert.setString(1, id);
				insert.setString(2, name);
				insert.setString(3,email);
				insert.setString(4, phoneNumber);
				insert.setString(5, arrival);
				insert.setString(6, visitType);
				insert.setString(7, enTime);
				insert.setString(8, enStat);
				insert.setString(9, careerCounseling);
				insert.setString(10, jobSearching);
				insert.setString(11, resume);
				insert.setString(12, coverLetter);
				insert.setString(13, mockInterview);
				insert.setString(14, internshipInformation);
				insert.setString(15, transitionToKean);
				insert.setString(16, sophomoreSeminar);
				insert.setString(17, juniorSeminar);
				insert.setString(18, seniorSeminar);
				insert.setString(19, career);
				insert.setString(20, copsTest);
				insert.setString(21, myersbriggs);
				insert.setString(22, approved);
				insert.setString(23, semester);
				insert.execute();
				conn2.close();
				insert.close();
			}
			catch(SQLException e)
			{
				request.getRequestDispatcher("View/failedSignIn.jsp").forward(request, response);
			}
			request.getRequestDispatcher("View/adminHome.jsp").forward(request, response);
		}
		catch(SQLException e)
		{
			request.getRequestDispatcher("View/failedSignIn.jsp").forward(request, response);
		}
	}

}
