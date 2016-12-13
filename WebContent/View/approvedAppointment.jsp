<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <style>
        span{
             width: auto;
            padding: 10px 18px;
             border-radius:20px;
            background-color: #4CAF50;
            color: white;
        }
        a{
        color:white;
        }
        input[type=submit]{
    width: 15%;
    background-color:#16E210;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;width: 10%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;
}
.text1{
    width: 15%;
    background-color:#16E210;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;width: 10%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;
}
    </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success</title>
</head>
<body>
	<h1>Appointment Approved or Updated!</h1>
	<span class="text1"><a href="Search">Search</a></span>
	<form action="../../CareerServicesProject/AdminHome" method = "Post">
			<input type = "hidden" name = "bipass" value = bipass> 
			<input type = "submit" value = "Go Back">
	</form>
	
</body>
</html>
