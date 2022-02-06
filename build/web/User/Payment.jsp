<%-- 
    Document   : Payment
    Created on : Jan 23, 2022, 6:55:00 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.LoginServlet"%>
<%@page import="Controller.Appointment"%>
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
    <title>Payment Page</title>
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
            margin: 60px 0 10px 20px;
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
        <h1 style="font-family: georgia;">Your Appointment</h1>

        <%
        String fname = (String)session.getAttribute("fname");
        String date = (String)session.getAttribute("date");
        String psy = (String)session.getAttribute("psy");             
        String time = (String)session.getAttribute("time");  
        double price = (Double)session.getAttribute("price");

        %>
        <table class="offset-1 mt-5" style="width: 80%;">
            <tr id="info" class="text-center ">
                <th>List</th>
                <th>Appointment Data</th>
            </tr>
            <tr id="info">
                <td>Full Name</td>
                <td class="text-center "><%= fname %></td>
            </tr>
            <tr id="info">
                <td>Appointment Date</td>
                <td class="text-center "><%= date %></td>
            </tr>
            <tr id="info">
                <td>Appointment Time</td>
                <td class="text-center "><%= time %></td>
            </tr>
            <tr id="info">
                <td>Psychologist</td>
                <td class="text-center ">Psy. D. <%= psy %></td>
            </tr>
        </table>
        <article>
                    <h3>
                        Order Total Preview:
                    </h3>       
                    <h5>
                        Subtotal: RM<%= price %><br>
                        Order Total: RM<%= price %>
                    </h5>
                    <br>
                    <h3>
                        Payment Method:
                    </h3>       
                    <h5>
                        Bank: CIMB<br>
                        Account Number: 221478923782382<br>
                        Beneficiary Name: Psychosocial Corp
                    </h5>
                    <br>
                    <div class="alert alert-danger">
                        <strong>Note:</strong> <b>Put the payment proof in your google drive!</b> and put the google drive link here.
                    </div>
                    <form action="../PaymentServlet" method="POST">
                        <label for="img"><h4>Payment Proof:</h4></label>
                        <input type="text" id="img" name="img" required>                                   
        </article>   


        <!-- Appointment button -->
        <button type="submit " class="btn btn-dark" onclick="confirmation_function" style="width: 200px; margin-bottom: 30px; margin-top: 50px; margin-left: 400px;">Submit</button>
        </form>


        </div>
    </section>
    <footer>
        <h5>copyright &copy; 2022 by Psychosocial</h5>
    </footer>

</body>

</html>
