<!DOCTYPE html>

<html>
    
<head>
    
<style>
body {
    
    background-image: url('images/d4.gif');
    background-repeat: no-repeat;
    background-size: 1280px 680px;
    
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
  left: 50px;
  top: 550px;
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


<a href="../SelfLoveChallange.jsp"> <button class="button" style="vertical-align:middle"><span>Back </span></button> </a>
  

</body>

</html>
