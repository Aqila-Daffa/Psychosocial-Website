<%-- 
    Document   : BookUpdateForm
    Created on : Jan 29, 2022, 10:45:31 PM
    Author     : ASUS
--%>


<%@page import="java.sql.*"%>
<%@page import="Model.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Page</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css">
   <style>
  h2{
    text-align: center;

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
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="Starter.jsp" class="nav-link">Home</a>
                </li>
                
            </ul>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Navbar Search -->
                

                <li class="nav-item">
                    <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                        <i class="fas fa-expand-arrows-alt"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                        <i class="fas fa-th-large"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="Starter.jsp" class="brand-link">
                <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Admin Control Page</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="dist/img/avatar5.png" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="ProfileAdmin.jsp" class="d-block">Admin Profile</a>
                    </div>
                </div>

                <!-- SidebarSearch Form -->
               

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item menu-open">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="UsrList.jsp" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>User List</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="PsyList.jsp" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Psychologist List</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="TransList.jsp" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Transaction List</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="AptList.jsp" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Appointment List</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="ThistoryList.jsp" class="nav-link">
                                <i class="nav-icon fas fa-notes-medical"></i>
                                <p>
                                    Transaction History
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../User/HomePage.jsp" class="nav-link" id="switch">
                                <i class="nav-icon fas fa-user"></i>
                                <p>
                                    Switch to User Page
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../LogoutServlet" class="nav-link" id="Confirmation">
                                <i class="nav-icon fas fa-sign-out-alt"></i>
                                <p>
                                    Log Out
                                </p>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
                <script>
        var checkConfirmation = document.getElementById('Confirmation');
        checkConfirmation.onclick = function() {
            var check = confirm("Are sure want to Sign Out ?");
            if (check === true) {
                return true;
            } else {
                alert("Okay, continue your activity 😉");
                return false;              
            }
        }
        
        var switchConfirmation = document.getElementById('switch');
        switchConfirmation.onclick = function() {
            var check = confirm("Are sure want to switch page ?");
            if (check === true) {
                return true;
            } else {
                alert("Okay, continue your activity 😉");
                return false;              
            }
        }
        </script>
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">User Booking Form</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="Starter.jsp">Home</a></li>
                                <li class="breadcrumb-item active">User Booking Form</li>
                            </ol>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="content">
                <h2>User Booking Form</h2>
                
 <form action="../UpdateBookServlet" method="post"> 
  <table>
      
      <%    
            String uname = "";
            String date = "";
            String time = "";
            String psyc = "";
            String transStat = "";
            int bId = Integer.parseInt(request.getParameter("book"));
            String query = "SELECT * FROM books WHERE bookId =? ";

            Connection con = DbConn.initializeDatabase();
            PreparedStatement ab = con.prepareStatement(query);
            ab.setInt(1,bId); 
            ResultSet rs = ab.executeQuery();

            while(rs.next()){                    
            uname += rs.getString(2);
            date += rs.getString(3);
            time += rs.getString(4);
            psyc += rs.getString(5);
            transStat += rs.getString(6);
               }
            ab.close();
            rs.close();
            con.close();
%>
      
            <tr>
              <th>Book ID</th>
              <td><input type="text" name="book" value="<%= bId %>" readonly></td>          
            </tr>
            <tr>
                <th>User Name</th>
                <td class="text-center "><%= uname %></td>
            </tr>
            <tr>
                <th>Appointment Date</th>
                <td class="text-center "><%= date %></td>
            </tr>
            <tr>
                <th>Appointment Time</th>
                <td class="text-center "><%= time %></td>
            </tr>
            <tr>
                <th>Psychologist</th>
                <td class="text-center "><%= psyc %></td>
            </tr>
            <tr>
                <th>Status Payment</th>
                <td class="text-center ">
                    <select id="transStat" name="transStat">
                        <option selected value="<%= transStat %>"><%= transStat %></option>
                        <option value="Approved">Approved</option>
                        <option value="Rejected">Rejected</option>
                    </select>
                </td>
            </tr>    
  </table>
     <!-- Back button -->
    <a href="TransUpdate.jsp" class="btn btn-dark mt-4" style="width: 150px; margin-left: 350px;margin-bottom: -20px;">BACK</a>
    <!-- Submit button -->
     <button type="submit" class="btn btn-dark mt-4" style="width: 150px; margin-left: 15px; margin-bottom: -20px;">Submit</button>
 </form>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
            <div class="p-3">
                <h5>Title</h5>
                <p>Sidebar content</p>
            </div>
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- Default to the left -->
            <strong>Copyright &copy; 2022 <a href="../index.jsp">Psychosocial</a>.</strong> All rights reserved.
        </footer>
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
</body>

</html>




