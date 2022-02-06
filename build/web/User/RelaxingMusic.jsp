<%-- 
    Document   : MotivationalVideo
    Created on : Jan 1, 2022, 4:42:27 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Relaxing Music Page</title>
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<style>
body{
    background: url("images/music.png") no-repeat center fixed;
    background-size: cover;
}

.container {
	top: 0;

}

.topleft {
  position: absolute;
  top: 8px;
  left: 16px;
  font-size: 18px;
}

.topright {
  position: absolute;
  top: 8px;
  right: 27px;
  font-size: 18px;
}

.links{
        margin-left: 15px;
	margin-top: 10%;
}

.tengah{
	margin-right: 7%;
	margin-left: 7%;
}

.link2{
        margin-left: 15px;
	margin-top: 7%;
        margin-bottom: 10%;
}

.tengah2{
	margin-right: 7%;
	margin-left: 7%;
}

button {
  background-color: ivory;
  width: 200px;
  font-size: 20px;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid black;
  color: black;
  cursor: pointer;
  position: absolute;
  bottom: -280px;
  border-radius: 8px; 
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
} 
    
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00ab';
  position: absolute;
  opacity: 0;
  top: 0;
  right: 60px;
  transition: 0.5s;
}

.button:hover span {
  padding-left: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 10;
}

</style>
</head>

<body>
<ul class="nav justify-content-center border border-3 border-dark" style="margin: 40px 50px 0 300px; background-color:rgb(226, 242, 119); border-radius:10px; width: 50%;">
            <li class="nav-item ">
                <h2 style="font-family: Times,Times, serif; font-weight: 550; ">Relaxing Music</h2>
            </li>
    </ul>
<div class="container">
   <div class="topright"><a href="HomePage.jsp" ><img src="images/logo.png " width="160px " height="100px "></a></div>
</div>

<div class="links">
	<embed  src="https://youtube.com/embed/bP9gMpl1gyQ" allowfullscreen="true" width="345" height="244">
	<embed class="tengah" src="https://youtube.com/embed/1ZYbU82GVz4" allowfullscreen="true" width="355" height="244">
	<embed src="https://youtube.com/embed/77ZozI0rw7w" allowfullscreen="true" width="325" height="244">
</div>	

<div class="link2">
	<embed  src="https://www.youtube.com/embed/G6UvNkPdcm0" allowfullscreen="true" width="345" height="244">
	<embed class="tengah2" src="https://www.youtube.com/embed/9sR_16TQ7fQ" allowfullscreen="true" width="355" height="244">
	<embed src="https://www.youtube.com/embed/WJ3-F02-F_Y" allowfullscreen="true" width="325" height="244">
</div>

<a href="HomePage.jsp"> <button class="button offset-5" style="vertical-align:middle"><span>Back</span></button> </a>

</body>

</html>
