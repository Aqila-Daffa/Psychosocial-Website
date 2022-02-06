<%-- 
    Document   : BeatStress
    Created on : Dec 31, 2021, 3:20:59 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <title>Beat Stress Page</title>
    <style>

body {
    background-image: url(images/beatbg.gif);
    background-repeat: no-repeat;
    background-size: auto;
} 

.grid-container {
  display: grid;
  grid-template-columns: 500px 500px;
  padding: 5px;
  margin-top: 10%;
  margin-left: 16%;
}
.grid-item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 20px solid rgb(255, 173, 173);
  padding: 40px;
  font-size: 30px;
  text-align: center;
}
h1{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    margin-left: 42%;
}

.topright {
  position: absolute;
  top: 10px;
  right: 16px;
  font-size: 18px;
}

 
    </style>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>beat stress Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
<body>
<div class="container">
   <div class="topright"><a href="HomePage.jsp" ><img src="images/logo.png " width="160px " height="100px "></a></div>
</div>
    
    <div class="grid-container">
        <div class="grid-item">step 1 :Eat and drink to optimize your health.</div>
        <div class="grid-item">step 4 :Find your stress triggers</div>
        <div class="grid-item">step 2 :Exercise regularly. </div>
        <div class="grid-item">step 5 :Reduce triggers of stress.</div>
        <div class="grid-item">step 3 :Study and practice relaxation techniques.</div>
        <div class="grid-item">step 6 :Examine your values and live by them. </div>
      </div>
        
    
</body>
</html>
