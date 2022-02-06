<%-- 
    Document   : TransactionHistory
    Created on : Jan 23, 2022, 7:49:26 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@page import="Model.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.LoginServlet"%>
<%@page import="Controller.Appointment"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction History Page</title>
 
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
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
        <h1 style="font-family: georgia;">Your Appointment History</h1>

        <%          
            int usId = 0;
            String query1 = "SELECT * FROM users WHERE username=?";
            String query3 = "SELECT * FROM books WHERE userId=?";

            Connection con = DbConn.initializeDatabase();
            PreparedStatement ab = con.prepareStatement(query1);
            ab.setString(1,name); 
            ResultSet rs = ab.executeQuery();
            while(rs.next()){
               usId += rs.getInt(1);        
            }           
            
            PreparedStatement ad = con.prepareStatement(query3);
            ad.setInt(1,usId); 
            ResultSet rslt = ad.executeQuery();
            while(rslt.next()){
            %>
        <table class="offset-1 mt-5" style="width: 80%;">
            <tr id="info" class="text-center ">
                <th>List</th>
                <th>Appointment Data</th>
            </tr>
            <tr id="info">
                <td>Full Name</td>
                <td class="text-center "><%= rslt.getString(2) %></td>
            </tr>
            <tr id="info">
                <td>Appointment Date</td>
                <td class="text-center "><%= rslt.getString(3) %></td>
            </tr>
            <tr id="info">
                <td>Appointment Time</td>
                <td class="text-center "><%= rslt.getString(4) %></td>
            </tr>
            <tr id="info">
                <td>Psychologist</td>
                <td class="text-center "><%= rslt.getString(5) %></td>
            </tr>
            <tr id="info">
                <td>Status Payment</td>
                <td class="text-center "><%= rslt.getString(6) %></td>
            </tr>
        </table>           
<%
               }
            ab.close();
            rs.close();
            ad.close();
            rslt.close();
            con.close();
%>
        <!-- Back button -->
        <a href="HomePage.jsp" class="btn btn-dark" style="width: 200px; margin-bottom: 30px; margin-top: 50px; margin-left: 400px;">Back to Home</a>

        </div>
    </section>
    <footer>
        <h5>copyright &copy; 2022 by Psychosocial</h5>
    </footer>

</body>

</html>
