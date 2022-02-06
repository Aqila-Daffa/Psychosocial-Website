<%-- 
    Document   : MakeAppointment
    Created on : Dec 30, 2021, 2:44:17 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@page import="Model.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.LoginServlet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!Doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Appointment Page</title>
    <style>
        header {
            margin: 0;
            background-color: rgb(184, 218, 239);
        }
        
        .profileLink {
            text-decoration: none;
            color: rgb(15, 9, 9);
        }
        
        .profileLink:link {
            text-decoration: none;
            color: rgb(53, 48, 48);
        }
        
        .profileLink:hover {
            text-decoration: none;
            color: rgb(65, 50, 50);
        }
        
        h1 {
            text-align: center;
        }
        
        section {
            margin: 60px 150px 20px 150px;
            background-color: white;
        }
        
        section article {
            margin: 60px 0 10px 0;
        }
        
        #article-list {
            padding: 0 10px 10px 10px;
        }
        
        footer {
            padding: 1px;
            margin-bottom: 20px;
            color: white;
            text-align: center;
            background-color: black;
        }
    </style>
    <script>
        function confirmation_function(form) {
            if (confirm("Are sure want to submit it ?")) {
                alert("The Form Submitted!");
            } else {
                alert("Recheck Your Form!");
                return false;
            }
        }
    </script>
</head>

<body style="background-color: antiquewhite;">
    <header>
        <nav class="navbar ">
            <a href="#"><img src="images/profile.png" width="100px" height="55px" style="margin-top: -10px; "></a>
            <%
            String name = (String)session.getAttribute("name");
            %>
            <a href="#" class="profileLink">
                <h3 style="font-family: georgia; font-weight: 550; margin-left: -340px; ">
                    <%= name %>
                </h3>
            </a>
            <h1 style="font-family: georgia; font-weight: 550; margin-left: -250px; ">
                Psychosocial
            </h1>
             <a href="#">
            <img src="images/logo.png " width="160px " height="100px " style="margin-right: -10px; ">
            </a>
        </nav>
    </header>


    <section>
        <h1 style="font-family: georgia;">Consultation Appointment</h1>

        <form action="../Appointment" onSubmit="return confirmation_function(this)" method="POST ">
            <div id="article-list">
                <article>
                    <b>Choose Time and Psychologist:</b><a href="PsychologistList.jsp" class="btn btn-outline-primary" style="width: 250px; height: 35px; margin-bottom: 20px; margin-top: 15px; margin-left: 50px;"><h6>Psychologist List</h6></a>
                    <%          
                            String psyName = request.getParameter("psyName");               
                    %>
                     <p>
                        <b>Psychologist Name:</b>&ensp;&nbsp;
                        <input type="text" name="psycName" value="<%= psyName %>" readonly>
                    </p> 
                    <p>
                        <b>Full Name:</b>&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;
                        <input type="text" name="fname" required>
                    </p>
                    <p>
                        <b>Your Age:</b>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
                        <input type="number" min="10" value="0" name="age" required>
                    </p>
                    <p>
                        <b>Appointment Date:</b>&ensp;&nbsp;
                        <input type="date" name="date" required>
                    </p>                                  
               </article>

                <!-- Back button -->
                <a href="HomePage.jsp" class="btn btn-dark" style="width: 200px; margin-bottom: 30px; margin-top: 50px; margin-left: 280px;">Back to Home</a>

                <!-- Appointment button -->
                <button type="submit" class="btn btn-dark" style="width: 200px; margin-bottom: 30px; margin-top: 50px; margin-left: 20px;">Confirm Form</button>
        </form>
        </div>
    </section>
    <footer>
        <h5>copyright &copy; 2022 by Psychosocial</h5>
    </footer>

</body>

</html>
