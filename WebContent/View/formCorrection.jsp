<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<a href="AdminHome"> Return to Admin Home</a>
<h2>Form Correction</h2>
<form>
<select name="select" id="select_k1" class="xla_k">
    <option value="Select">Select</option>
<option value="Student ID">Student ID</option>
<option value="Student Name">Student Name</option>
    </select>
      <input type="text" placeholder="Search for the Key Words">
      <input type="submit" value="Search">
</form>
<h3>Career Development & Advancement</h3>
<h1>Sign In</h1>

<body>


<form>
<input type="radio" name="type" value="WALK IN" checked>WALK IN
<input type="radio" name="type" value="APPOINTMENT">APPOINTMENT
<input type="radio" name="type" value="CLASS">CLASS
<input type="radio" name="type" value="WORKSHOP">WORKSHOP
</form> 

<form action="action_page.php">

<fieldset>

<legend>Personal information:</legend>
Data:
<input type="text" name="Data" value="">
<br>
Appointment Time:
<input type="text" name="Appointment Time" value="">
<input type="radio" name="time" value="AM" checked>AM
<input type="radio" name="time" value="PM" checked>PM
Time out:
<input type="text" name="Time out" value="">
<input type="radio" name="time" value="AM" checked>AM
<input type="radio" name="time" value="PM" checked>PM
<br>
Name:
<input type="text" name="Name" value="">
<br>
Cell Number:
<input type="text" name="Cell Number" value="">
Home Number:
<input type="text" name="Home Number" value="">
Email Address:
<input type="text" name="Email Address" value="">

</fieldset>

<span>************************************************************************************************************************************************************</span>

<fieldset>

<legend>ENROLLMENT STATUS:(check the box)</legend>
<span>Section(A):</span>
<input type="radio" name="SectionA" value="Full-Time" checked>Full-Time
<input type="radio" name="SectionA" value="Part-Time">Part-Time
<br>
<span>Section(B):</span>
<input type="radio" name="SectionB" value="Freshman" checked>Freshman
<input type="radio" name="SectionB" value="Sophomore">Sophomore
<input type="radio" name="SectionB" value="Junior" checked>Junior
<input type="radio" name="SectionB" value="Senior">Senior
<input type="radio" name="SectionB" value="Graduate Student" checked>Graduate Student
<input type="radio" name="SectionB" value="Alumni">Alumni
<input type="radio" name="SectionB" value="Not a Kean Student" checked>Not a Kean Student

</fieldset>

<span>************************************************************************************************************************************************************</span>

<fieldset>

<legend>Please check boxes that applies to your visit</legend>

<fieldset>

<legend>APPOINTMENTS</legend>

<form action="" method="get"> 
<label><input name="choice" type="checkbox" value="" />Career Counseling </label> 
<label><input name="choice" type="checkbox" value="" />Job Searching </label> 
<label><input name="choice" type="checkbox" value="" />Resume </label> 
<label><input name="choice" type="checkbox" value="" />Cover letter </label> 
<label><input name="choice" type="checkbox" value="" />Mock Interview </label> 
<label><input name="choice" type="checkbox" value="" />Internship Information </label>
<input type="text" name="choice" value="">
</form> 

</fieldset>

<fieldset>

<legend>WORKSHOPS</legend>

<form action="" method="get"> 
<label><input name="choice" type="checkbox" value="" />How to Choose a Major </label> 
<label><input name="choice" type="checkbox" value="" />10 Ways to Job Search </label> 
<label><input name="choice" type="checkbox" value="" />Craft a Resume that works </label> 
<label><input name="choice" type="checkbox" value="" />Alumni Job Club </label> 
<label><input name="choice" type="checkbox" value="" />Video tapes </label> 
<label><input name="choice" type="checkbox" value="" />CAPSTONE </label>
<input type="text" name="choice" value="">
</form> 

</fieldset>

<fieldset>

<legend>CLASSES</legend>

<form action="" method="get"> 
<label><input name="choice" type="checkbox" value="" />Transitionto Kean(T2K) </label> 
<label><input name="choice" type="checkbox" value="" />Sophomore Seminar </label> 
<label><input name="choice" type="checkbox" value="" />Junior Seminar </label> 
<label><input name="choice" type="checkbox" value="" />Senior Seminar </label> 
<input type="text" name="choice" value="">
<input type="text" name="choice" value="">
<input type="text" name="choice" value="">
</form> 

</fieldset>

<fieldset>

<legend>SELF HELP</legend>

<form action="" method="get"> 
<label><input name="choice" type="checkbox" value="" />Job Searching </label> 
<label><input name="choice" type="checkbox" value="" />Library Research </label> 
<input type="text" name="choice" value="">
</form> 

</fieldset>

<fieldset>

<legend>TESTS</legend>

<form action="" method="get"> 
<label><input name="choice" type="checkbox" value="" />COPS(Career Interest Test) </label> 
<label><input name="choice" type="checkbox" value="" />Myers Briggs(Personaility Test) </label> 
</form> 

</fieldset>

</fieldset>

</form>

<span>*** Have you SIGNED up for COLLEGE CENTRAL yet?</span>
<input type="radio" name="sign" value="YES" checked>YES
<input type="radio" name="sign" value="NO">NO
<span>***</span>

<br><br>
<input type="submit" value="Submit">

</body>
</html>