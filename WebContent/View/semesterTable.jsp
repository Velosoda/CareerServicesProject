<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
#main{
  position: relative;
}
div#first{
  background-image: url(https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Kean_University_Logo.svg/1034px-Kean_University_Logo.svg.png);
  opacity: 0.25;
  width:  100%;
  height: 100%;
  background-size: 75%;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
div#second{
  width:100%;
  height: 100%;
  position: absolute;
  top: 0 ;
  left:0;
}
input[type=submit]{
    width: 15%;
    background-color:#16E210;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;width: 20%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;
}

body{
  background-color: #8BA2E5;
  border:10px;
}
.xla_k
{
  border-radius : 10px;  
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Table</title>
</head>
<body>
	<table border = "1">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Phone_Number</th>
				<th>Arrival</th>
				<th>VisitType</th>
				<th>EnrollmentTime</th>
				<th>EnrollmentStatus</th>
				<th>Career</th>
				<th>Career_Counseling</th>
				<th>Cops_Test</th>
				<th>Cover_Letter</th>
				<th>Internship_Information</th>
				<th>Job_Searching</th>				
				<th>Junior_Seminar</th>
				<th>Mock_Interview</th>
				<th>Myers_Briggs</th>
				<th>Resume</th>
				<th>Senior_Seminar</th>
				<th>Sophomore_Seminar</th>
				<th>Transition_To_Kean</th>																
				<th>Semester</th>
				<th>Comment</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list"  items="${list}">
				<tr>
					<td><c:out value="${list.ID}"/></td>
					<td><c:out value="${list.name}"/></td>
					<td><c:out value="${list.email}"/></td>
					<td><c:out value="${list.phone_Number}"/></td>
					<td><c:out value="${list.arrival}"/></td>
					<td><c:out value="${list.visitType}"/></td>
					<td><c:out value="${list.enrollmentTime}"/></td>
					<td><c:out value="${list.enrollmentStatus}"/></td>
					<td><c:out value="${list.career}"/></td>
					<td><c:out value="${list.career_Counseling}"/></td>
					<td><c:out value="${list.cops_Test}"/></td>
					<td><c:out value="${list.cover_Letter}"/></td>
					<td><c:out value="${list.internship_Information}"/></td>
					<td><c:out value="${list.job_Searching}"/></td>
					<td><c:out value="${list.junior_Seminar}"/></td>
					<td><c:out value="${list.mock_Interview}"/></td>
					<td><c:out value="${list.myers_Briggs}"/></td>
					<td><c:out value="${list.resume}"/></td>
					<td><c:out value="${list.senior_Seminar}"/></td>
					<td><c:out value="${list.sophomore_Seminar}"/></td>
					<td><c:out value="${list.transition_To_Kean}"/></td>																									
					<td><c:out value="${list.semester}"/></td>
					<td><c:out value="${list.comment}"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form action="../../CareerServicesProject/AdminHome" method = "Post">
		<input type = "hidden" name = "bipass" value = bipass> 
		<input type = "submit" value = "Go Back to Admin Home">
	</form>
	<br>
	<form action="../../CareerServicesProject/View/semesterSearch.jsp" method = "Post">
			<input type = "hidden" name = "bipass" value = bipass> 
			<input type = "submit" value = "Go Back to Search by Semester">
	</form>
	<br>
	<form action="../../CareerServicesProject/Excel" method ="post">
	<input type = "hidden" name = "bipass" value = bipass>
	<input type = "submit" name = "export_excel" value = "Export to Excel">
 	</form>
	
</body>
</html> 
