<%-- 
    Document   : PsychologistList
    Created on : Jan 6, 2022, 4:23:45 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@page import="Model.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
    </style>
    <script>
        function confirmation_function(form) {
            if (confirm("Are sure with your choice ?")) {
                alert("The Psychologist has been choosen!");
            } else {
                alert("Recheck Your Choice!");
                return false;
            }
        }
    </script>
</head>

<body style="background-color: antiquewhite;">
    <header style="background-color: rgb(184, 218, 239); margin: 0;">
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
        <h1 style="font-family: georgia;">Psychologist List</h1>

        <form action="../Appointment" onSubmit="return confirmation_function(this)" method="POST ">
            <div id="article-list">
                <article>
                
<table>
  <tr>
    <th>Psychologist Name</th>
    <th>Gender</th>
    <th>Email</th>
    <th>Consultation Time</th>
    <th>Consultation Price</th>
    <th>Availability</th>
    <th>Serving Total</th>
    <th>Choose Psychologist</th>
  </tr>
  <%          
            String query = "SELECT * FROM psychologists WHERE availability = 'Active'";

            Connection con = DbConn.initializeDatabase();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next()){                    
%>
  <tr>
    <form action="MakeAppointment.jsp" method="POST">
    <td><input type="text" name="psyName" value="<%= rs.getString(2) %>" size="10" readonly></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(6) %></td>
    <td><%= rs.getDouble(8) %></td>
    <td><%= rs.getString(7) %></td>
    <td><%= rs.getInt(9) %></td>
    <td><button type="submit" class="btn btn-dark">Choose</button></td>
    </form>
 </tr>
 <%
               }
            st.close();
            con.close();
%>
 </table>
                </article>        
        </div>
    </section>
    <footer>
        <h5>copyright &copy; 2021 by Psychosocial</h5>
    </footer>

</body>

</html>
