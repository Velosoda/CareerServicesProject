<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
h1{
  background-color: #4169E1;
  color: White;
  padding: 10px 10px;
  margin: 10px 0;
  border: 1px;
  border-radius:20px;
  width: 30%;
  font-size: 117%;
  text-align: center;
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
input[type=text] {
     width: 25%;
    padding: 8px 2px;
    margin: 5px 0;
    display: inline-block;
    border: 4px solid #ccc;
    border-radius:10px;
    box-sizing: border-box;width: 25%;
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="font-size:35px;">Semester Search</h1> 
		<form action="../../CareerServicesProject/ShowSemesterTable" method="post">
			<input type="text" name="semester" placeholder="Search By Semester EX. Fall/2016" value="" >
		    <input type="submit" value="Search" >
		</form>
		<form action="../../CareerServicesProject/AdminHome" method = "Post">
			<input type = "hidden" name = "bipass" value = bipass> 
			<input type = "submit" value = "Go Back">
		</form>
		<p>${error }</p>
</body>
</html>
