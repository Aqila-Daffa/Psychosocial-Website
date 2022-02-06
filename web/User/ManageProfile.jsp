<%-- 
    Document   : ManageProfile
    Created on : Dec 30, 2021, 2:42:45 PM
    Author     : ASUS
--%>

<%@page import="Model.DbConn"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
            <%          
            String usname = (String)session.getAttribute("usname");
            String eml = (String)session.getAttribute("eml");
            String phn = (String)session.getAttribute("phn");
            String occ = (String)session.getAttribute("occ");
            String gdr = (String)session.getAttribute("gdr");
            String pass = "";
            String query = "SELECT * FROM users WHERE username =? ";

            Connection con = DbConn.initializeDatabase();
            PreparedStatement ab = con.prepareStatement(query);
            ab.setString(1,usname); 
            ResultSet rs = ab.executeQuery();
            while(rs.next()){
               pass += rs.getString(7);         
            }
            ab.close();
            rs.close();
            con.close();
            %>
<body style="background-repeat: no-repeat; background-size: 1250px; width: 1200px; height: 600px; background-image: url(images/bgsignin.jpg);">
    <div class="container" style="margin-top: 150px;">
        <div class="row">
            <div class="col-md-3 offset-md-3 border border-2 border-dark " style="height: 60px; width: 550px; margin-top: -120px; margin-left: 300px; background-color: rgb(202, 255, 191);">
                <h2 style="text-align: center; margin-top: 5px; font-family: georgia; font-weight: 550;">My Profile</h2>
            </div>
            <div class="col-md-4 offset-md-3 border border-2 border-dark" style="height: 600px; width: 500px; margin-top: -40px; margin-left: 325px; background-color: rgb(202, 255, 191);">
                <form action="../UpdateServlet" method="post">

                    <!-- Profile logo -->
                    <img src="images/profile.png" width="280px" height="160px" style="margin-left: 90px; margin-top:-3px;">

                    <!-- Username -->
                    <div class="col-11 form-floating mb-3 mt-1">
                        <input type="txt" class="form-control" id="username" name="username" placeholder="Username" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);" value="<%= usname %>" readonly>
                        <label for="username" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/usname.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Username</label>
                    </div>

                    <!-- Email input -->
                    <div class="col-11 form-floating mb-3 mt-3">
                        <input type="txt" class="form-control" id="email" name="email" placeholder="Email" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);" value="<%= eml %>">
                        <label for="email" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/mail.svg" width="20px" height="27px" style="margin-right: 7px; margin-top:-2px;">Email Address</label>
                    </div>

                    <!-- Phone Number -->
                    <div class="col-11 form-floating mb-3 mt-3">
                        <input type="txt" class="form-control" id="phone" name="phone" placeholder="Phone" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);" value="<%= phn %>">
                        <label for="phone" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/phone.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Phone Number</label>
                    </div>

                    <!-- Occupation -->
                    <div class="col-11 form-floating mb-2 mt-3">
                        <input type="txt" class="form-control" id="occupation" name="occupation" placeholder="Occupation" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);" value="<%= occ %>">
                        <label for="occupation" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/occu.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Occupation</label>
                    </div>

                    <!-- Gender -->
                    <div class="col-13 mb-1 mt-1">
                        <select class="col-11 mb-3 mt-3 rounded" id="gender" name="gender" style="margin-left: 15px;font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px; height: 30px; background-color: rgb(255,255,252);">
                            <option selected hidden value="<%= gdr %>"><%= gdr %></option>
                            <option value="Male" >Male</option>
                            <option value="Female">Female</option>
                            <option value="Others">Others</option>
                          </select>
                    </div>
                    <!-- Password input -->
                    <div class="col-11 form-floating mb-3">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" style="margin-left: 15px; height: 45px; font-weight: 530; font-size: 15px; background-color: rgb(255,255,252);" value="<%= pass %>">
                        <label for="password" style="margin-left: 15px; font-family: arial; font-weight: 550; margin-top:-5px; font-size: 15px;"><img src="images/lock.svg" width="18px" height="22px" style="margin-right: 7px; margin-top:-3px;">Password</label>
                    </div>

                    <!-- Back button -->
                <a href="ViewProfile.jsp" class="btn btn-dark mt-4" style="width: 150px; margin-left: 75px;margin-bottom: -20px;">CANCEL</a>

                <!-- Save button -->
                <button type="submit" class="btn btn-dark mt-4" onclick="confirmation_function()" style="width: 150px; margin-left: 15px; margin-bottom: -20px;">SAVE</button>
                <script>
                    function confirmation_function(form) {
                        var check = confirm("Are sure want to save it now?");
                        if (check === true) {
                            alert('Congratulation! You have successfuly updated your profile 👏😊!');
                            return true;
                        } else {
                            alert('Please, recheck your data ☺');
                            return false;
                        }
                    }
                </script>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
