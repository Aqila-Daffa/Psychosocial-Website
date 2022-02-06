<%-- 
    Document   : MentalHResult
    Created on : Dec 30, 2021, 2:44:51 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Controller.MentalTestServlet"%>
<%@page import="Controller.LoginServlet"%>
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
    <title>Mental Health Result Page</title>
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
        
        table,
        th,
        td {
            border: 2px solid black;
        }
        
        #info:hover {
            background-color: rgb(2, 247, 255);
        }
        
        #info:nth-child(even) {
            background-color: #dbdbdb;
        }
        
        th {
            background-color: #08a169;
            color: rgb(253, 253, 253);
        }
        
        tr {
            font-weight: bold;
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
</head>

<body style="background-color: antiquewhite;">
    <header>
        <nav class="navbar">
            <a href="ViewProfile.jsp"><img src="images/profile.png" width="100px" height="55px" style="margin-top: -10px; "></a>
            <%
            String name = (String)session.getAttribute("name");
            %>
            <a href="ViewProfile.jsp" class="profileLink">
                <h3 style="font-family: georgia; font-weight: 550; margin-left: -340px; ">
                    <%= name %>
                </h3>
            </a>
            <h1 style="font-family: georgia; font-weight: 550; margin-left: -250px; ">
                Psychosocial
            </h1>
            <a href="HomePage.jsp">
            <img src="images/logo.png " width="160px " height="100px " style="margin-right: -10px;">
            </a>
        </nav>
    </header>

    <section>
        <h1 style="font-family: georgia;">Mental Health Test Result</h1>

        <table class="offset-3 mt-5" style="width: 50%;">
            <tr id="info" class="text-center ">
                <th>Interpretation</th>
                <th>Scale</th>
            </tr>
            <tr id="info">
                <td>Normal</td>
                <td class="text-center ">0 - 20</td>
            </tr>
            <tr id="info">
                <td>Stress</td>
                <td class="text-center ">21 - 50</td>
            </tr>
            <tr id="info">
                <td>Anxiety</td>
                <td class="text-center ">51 - 75</td>
            </tr>
            <tr id="info">
                <td>Depressed</td>
                <td class="text-center ">76 - 105</td>
            </tr>
        </table>

        <form action="User/MakeAppointment.jsp" method="POST ">
            <div id="article-list">
                <article>
                    <h3>
                        Your Result:
                    </h3>
                                <%                     
            int scr = (Integer)session.getAttribute("score");           
            String intpret = "";          
            
                         if(scr >= 0 && scr < 21){
                                        intpret += "Normal"; 
                                    session.setAttribute("intpret", intpret);
                                    }
                                    else if(scr > 20 && scr < 51){
                                        intpret += "Stress"; 
                                    session.setAttribute("intpret", intpret);
                                    }
                                    else if(scr > 50 && scr < 76){
                                        intpret += "Anxiety"; 
                                    session.setAttribute("intpret", intpret);
                                    }
                                    else if(scr > 75){
                                        intpret += "Depressed";   
                                    session.setAttribute("intpret", intpret);
                                    } 
            
            out.println(   "<table class='offset-1' style='width: 50%; background-color: rgb(4, 248, 155); '>\n" +
                        	"<tr class='text-center'>\n" +
      				"	<td>Your Score:</td>\n" +
      				"	<td>" + scr + "</td>\n" +
    				"</tr>\n" +
                                "<tr class='text-center'>\n" +
      				"	<td>Your Interpretation</td>\n" + 
                                "<td>" + intpret + "</td>" +
                                "</tr>\n" + "</table>");
                %>
                <br>
                <div class="alert alert-danger">
                    <strong>Note:</strong> <b>This score only early detection!</b> for further information, you can do appointment for online consultation.
                </div>
                </article>


                <!-- Back button -->
                <a href="User/HomePage.jsp" class="btn btn-dark" style="width: 200px; margin-bottom: 30px; margin-top: 50px; margin-left: 280px;">Back to Home</a>

                <!-- Appointment button -->
                <button type="submit " class="btn btn-dark" style="width: 200px; margin-bottom: 30px; margin-top: 50px; margin-left: 20px;">Make Appointment</button>
        </form>
        </div>
    </section>
    <footer>
        <h5>copyright &copy; 2022 by Psychosocial</h5>
    </footer>

</body>

</html>
