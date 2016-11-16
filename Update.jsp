<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
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
body{
  background-color: #87CEEB
  }
 body {
    border: 10px solid #f1f1f1;
}
button[type=button]{
    width: 20%;
    display: inline-block;
    color: White;
    border-radius:20px;
    box-sizing: border-box;
    font-size: 100%;
    position: static;    
    border: none;
    background-color: #4CAF50; 
    padding: 14px 20px;
    cursor:pointer;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
<BR>
    <center>
		<h1>Form Correction</h1>
	</center>
<form action="FormCorrection" method="post">
	<br>
	<center>
	    <h3><i>Please check the boxes that apply to your visit</i></h3>
		<br>
		Career Counseling <input type ="checkbox" name = "careerCounseling" value ="Career Counseling"><br>
		Job Searching <input type ="checkbox" name = "jobSearching" value ="Job Searching"><br>
		Resume <input type ="checkbox" name = "resume" value ="Resume"><br>
		Cover Letter <input type ="checkbox" name = "coverLetter" value ="Cover Letter"><br>
		Mock Interview <input type ="checkbox" name = "mockInterview" value ="Mock Interview"><br>
		Internship Information <input type ="checkbox" name = "internshipInformation" value ="Internship Information"><br>
		Transition to Kean <input type ="checkbox" name = "transitionToKean" value ="Transition To Kean"><br>
		Sophomore Seminar <input type ="checkbox" name = "sophomoreSeminar" value ="Sophomore Seminar"><br>
		Junior Seminar <input type ="checkbox" name = "juniorSeminar" value ="Junior Seminar"><br>
		Senior Seminar <input type ="checkbox" name = "seniorSeminar" value ="Senior Seminar"><br>
		Career <input type ="checkbox" name = "career" value ="Career"><br>
		Cops Test <input type ="checkbox" name = "copsTest" value ="Cops Test"><br>
		Myers Briggs <input type ="checkbox" name = "myersBriggs" value ="Myers Briggs"><br>
		<input type="hidden" name="itemToCorrect" value="${index}"/>
		<input type="hidden" name="UorA" value="postupdate"/>
	</center>
<br>
<br>
	<center>
<br>
	Comment:<INPUT value="" NAME="comment" TYPE="text" SIZE="29" onmouseover="this.style.borderColor='black';this.style.backgroundColor='plum'"  
style="width: 106; height: 21"  
onmouseout="this.style.borderColor='black';this.style.backgroundColor='#ffffff'" style="border-width:1px;border-color=black">
    </center>
<br>
<input type = "submit" value= "Update"/>
</form>
</body>
</html>