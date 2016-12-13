<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Sign In Form</title>
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
h2 {
    background-color: #663399;
    color: White;
    padding: 10px 10px;
    margin: 10px 0;
    border: 1px;
    border-radius:20px;
    width: 10%;
    font-size: 117%;
    text-align: center;
}
h1{
  background-color: #FF0569;
  color: White;
  padding: 10px 10px;
  margin: 10px 0;
  border: 1px;
  border-radius:20px;
  width: 40%;
  font-size: 117%;
  text-align: center;
}
h3 {
    background-color: #4169E1;
    color: White;
    padding: 10px 1px;
    margin: px 0;
    border: 0px;
    border-radius:20px;
    width: 33%;
    font-size: 117%;
    text-align: center;
}
body{
  background-color: #8BA2E5;
  border: 10px;
}
}
    form {
    border: 0px solid #f1f1f1;
}
input[type=text], input[type=password], input[type=email] {
    width: 25%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;
}
.imgcontainer {
    text-align: center;
    margin: 1px 0 1px 0;
}
img.avatar {
    width: 20%;
    border-radius: 100%;
}
.container {
    padding: 10px;
}
button {
    background-color: #16E210;
    color: White;
    padding: 14px 20px;
    margin: 3px 0;
    border: none;
    border-radius:20px;
    cursor: pointer;
    width: 20%;
    }
    .Reason{
        column-count:3;
        column-gap: 2px;
    }
   
    </style>
<body>
  <div id="main">
  <div id="first">
  </div>
  <div id="second">
  <div class="imgcontainer">
    <img src="https://upload.wikimedia.org/wikipedia/en/thumb/b/b6/Kean_University_Logo.svg/1034px-Kean_University_Logo.svg.png" alt="Avatar" class="avatar">
  </div>
<script type="text/javascript">
    function validate()
    {
       if( document.studentSignIn.visitType.value == "" || document.studentSignIn.visitType.value == null)
       {
          alert( "Please select what type of visit this is" );
          document.studentSignIn.visitType.focus() ;
          return false;
       }
       if( document.studentSignIn.name.value == "" || document.studentSignIn.name.value == null)
       {
          alert( "Please provide your name" );
          document.myForm.name.focus() ;
          return false;
       }
       if( document.studentSignIn.id.value == "" || document.studentSignIn.id.value == null)
       {
          alert( "Please provide your id" );
          document.studentSignIn.id.focus() ;
          return false;
       }
       if( document.studentSignIn.email.value == "" || document.studentSignIn.email.value == null)
       {
          alert( "Please provide your email" );
          document.studentSignIn.email.focus() ;
          return false;
       }
       if( document.studentSignIn.phoneNumber.value == "" || document.studentSignIn.phoneNumber.value == null)
       {
          alert( "Please provide your phoneNumber" );
          document.studentSignIn.phoneNumber.focus() ;
          return false;
       }
       if( document.studentSignIn.arrive.value == "" || document.studentSignIn.arrive.value == null)
       {
          alert( "Please provide your arrive" );
          document.studentSignIn.arrive.focus() ;
          return false;
       }
       if( document.studentSignIn.enTime.value == "" || document.studentSignIn.enTime.value == null)
       {
          alert( "Please provide your enTime" );
          document.studentSignIn.enTime.focus() ;
          return false;
       }
       if( document.studentSignIn.enStat.value == "" || document.studentSignIn.enStat.value == null)
       {
          alert( "Please provide your enStat" );
          document.studentSignIn.enStat.focus() ;
          return false;
       }
       
    	return true; 
    </script>
<BR>
    <center>
		<h1>Welcome to Career Services</h1>
	
<form action = "../../CareerServicesProject/Success" method = "post" name="studentSignIn" onSubmit="validate();">
	<input type ="radio" name = "visitType" value ="Walk In">Walk-in
	<input type ="radio" name = "visitType" value ="Class">Class
	<input type ="radio" name = "visitType"  value ="Appointment">Appointment
	<input type ="radio" name = "visitType" value ="Workshop">Workshop
	
	</center>
	<Center>
		<br>
		<label><b>Name</b></label>
			<input type = "text" name = "name" placeholder="Name">
		
		<label><b>ID</b></label>
			<input type = "text" name = "id" placeholder="ID" >
		<br>
		<label><b>E-Mail</b></label>
			<input type = "email" name = "email" placeholder="Kean E-mail" >
		<label><b>Phone Number</b></label>
			<input type = "text" name = "phoneNumber" placeholder="Phone Number" >
			<br>
	</center>
  	<center>
	<h3><b><i>Enrollment Status</i></b></h3>
  		<br>
			<input type ="radio" name = "enTime" value ="Full Time"> Full-time
			<input type ="radio" name = "enTime" value ="Part Time"> Part-time
	</center>
	<br>
  	<center>
		<input type ="radio" name = "enStat" value ="Freshmen"> Freshman
		<input type ="radio" name = "enStat" value ="Sophomore"> Sophomore
		<input type ="radio" name = "enStat" value ="Junior"> Junior
		<input type ="radio" name = "enStat" value ="Senior"> Senior
		<input type ="radio" name = "enStat" value ="Graduate"> Graduate Student
		<input type ="radio" name = "enStat" value ="Alumni"> Alumni
		<input type ="radio" name = "enStat" value ="Potential Student"> Potential Student
	<br>
	</center>
	<center>
	    <h3><i>Please check the boxes that apply to your visit</i></h3>
	<br>
	</center>
	<div class="Reason">
	<center>
	Career <input type ="checkbox" name = "career" value ="Career"><br>
	Career Counseling <input type ="checkbox" name = "careerCounseling" value ="Career Counseling"><br>
	Cops Test <input type ="checkbox" name = "copsTest" value ="Cops Test"><br>	
	Cover Letter <input type ="checkbox" name = "coverLetter" value ="Cover Letter"><br>
	Internship Information <input type ="checkbox" name = "internshipInformation" value ="Internship Information"><br>
	Job Searching <input type ="checkbox" name = "jobSearching" value ="Job Searching"><br>
	Junior Seminar <input type ="checkbox" name = "juniorSeminar" value ="Junior Seminar"><br>
	Mock Interview <input type ="checkbox" name = "mockInterview" value ="Mock Interview"><br>
	Myers Briggs <input type ="checkbox" name = "myersBriggs" value ="Myers Briggs"><br>
	Resume <input type ="checkbox" name = "resume" value ="Resume"><br>
	Senior Seminar <input type ="checkbox" name = "seniorSeminar" value ="Senior Seminar"><br>
	Sophomore Seminar <input type ="checkbox" name = "sophomoreSeminar" value ="Sophomore Seminar"><br>
	Transition to Kean <input type ="checkbox" name = "transitionToKean" value ="Transition To Kean"><br>
	</center>
<br>
</div>
<Center>
<button type = "submit">Submit</button>
</center>
</form>
</body>
</html>
