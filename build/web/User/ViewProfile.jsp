<%-- 
    Document   : ViewProfile
    Created on : Dec 30, 2021, 2:42:59 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.DbConn"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body style="background-repeat: no-repeat; background-size: 1250px; width: 1200px; height: 550px; background-image: url(../images/bgsignin.jpg);">
    <div class="container" style="margin-top: 150px;">
        <div class="row">
            <div class="col-md-3 offset-md-3 border border-2 border-dark " style="height: 60px; width: 550px; margin-top: -120px; margin-left: 300px; background-color: rgb(202, 255, 191);">
                <h2 style="text-align: center; margin-top: 5px; font-family: georgia; font-weight: 550;">My Profile</h2>
            </div>
            <%          
            String usname = "";
            String eml = "";
            String phn = "";
            String occ = "";
            String gdr = "";
            String name = (String)session.getAttribute("name");
            String query = "SELECT * FROM users WHERE username =? ";

            Connection con = DbConn.initializeDatabase();
            PreparedStatement ab = con.prepareStatement(query);
            ab.setString(1,name); 
            ResultSet rs = ab.executeQuery();
            while(rs.next()){
               usname += rs.getString(2);
               eml += rs.getString(3);
               gdr += rs.getString(4);
               phn += rs.getString(5);
               occ += rs.getString(6);          
            }
            ab.close();
            rs.close();
            con.close();
            
            session.setAttribute("usname", usname);
            session.setAttribute("eml", eml);
            session.setAttribute("gdr", gdr);
            session.setAttribute("phn", phn);
            session.setAttribute("occ", occ);
            %>
            <div class="col-md-4 offset-md-3 border border-2 border-dark" style="height: 480px; width: 500px; margin-top: -40px; margin-left: 325px; background-color: rgb(202, 255, 191);">

                <!-- Profile logo -->
                <img src="../images/profile.png" width="280px" height="160px" style="margin-left: 90px; margin-top:-3px;">

                <!-- Username -->
                <div class="col-11 form-floating mb-3 mt-1">
                    <h5 style="margin-left: 20px; margin-top: 10px; font-family: arial;"><img src="images/usname.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Username: <b><%= usname %></b></h5>
                </div>

                <!-- Email input -->
                <div class="col-11 form-floating mb-3 mt-3">
                    <h5 style="margin-left: 20px; margin-top: 20px; font-family: arial;"><img src="images/mail.svg" width="20px" height="27px" style="margin-right: 7px; margin-top:-2px;">Email Address: <b><%= eml %></b></h5>
                </div>

                <!-- Phone Number -->
                <div class="col-11 form-floating mb-3 mt-3">
                    <h5 style="margin-left: 20px; margin-top: 20px; font-family: arial;"><img src="images/phone.svg" width="20px" height="27px" style="margin-right: 7px; margin-top:-2px;">Phone Number: <b><%= phn %></b></h5>
                </div>

                <!-- Occupation -->
                <div class="col-11 form-floating mb-2 mt-3">
                    <h5 style="margin-left: 20px; margin-top: 20px; font-family: arial;"><img src="images/occu.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Occupation: <b><%= occ %></b></h5>
                </div>

                <!-- Gender -->
                <div class="col-13 mb-1 mt-1">
                    <h5 style="margin-left: 20px; margin-top: 20px; font-family: arial;"><img src="images/gender.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Gender: <b><%= gdr %></b></h5>
                </div>
                <!-- Back button -->
                <a href="HomePage.jsp" class="btn btn-dark mt-4" style="width: 150px; margin-left: 75px;margin-bottom: -20px;">BACK</a>

                <!-- Edit button -->
                <a href="ManageProfile.jsp" class="btn btn-dark mt-4" style="width: 150px; margin-left: 15px; margin-bottom: -20px;">EDIT</a>
            </div>
        </div>
    </div>
</body>

</html>
