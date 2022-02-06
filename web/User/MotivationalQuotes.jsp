<%-- 
    Document   : MotivationalQuotes
    Created on : Dec 30, 2021, 3:48:11 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Motivational Quotes Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
	body{
		background: url("images/motiv.gif") no-repeat center fixed;
		background-size: cover;
	}
.grid-container {
  margin-top: 18%;
  display: grid;
  grid-template-columns: 33% 33% 33%;

  padding: 10px;
  grid-column-gap: 5px;
}
.grid-item {
 
  border: 1px solid #3CB371;
  background-color: #FAFAD2;
  padding: 5px;
  font-size: 20px;
  text-align: center;
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
  right: 16px;
  font-size: 18px;
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
  bottom: 20px;
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


<div class="container">
   <div class="topright"><a href="HomePage.jsp" ><img src="images/logo.png " width="160px " height="100px "></a></div>
</div>

	
	
	<div class="grid-container">
  		
  		<div class="grid-item">
  			<p>"We cannot solve the problem with the kind of thinking we employed when we came up with them"</p>
			<b>Albert Einstein</b></div>
  		<div class="grid-item">
  			<p>"Learn as if you will live forever, live like you will die tomorrow"</p>
			<b>Mahatma Gandhi</b>
		</div>
  		<div class="grid-item">
  			<p>"Don't wait around for other people to be happy for you. Any happiness you get you've got to make yourself"</p>
			<b>Alice Walker</b>
		</div>
		
	</div>

<a href="HomePage.jsp"> <button class="button offset-5" style="vertical-align:middle"><span>Back </span></button> </a>
</body>
</html>