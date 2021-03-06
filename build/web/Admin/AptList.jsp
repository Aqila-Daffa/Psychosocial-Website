<%-- 
    Document   : aptList
    Created on : Jan 18, 2022, 11:17:08 AM
    Author     : AHMAD KEMAL AUSHAF
--%>

<%@page import="java.sql.*"%>
<%@page import="Model.DbConn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
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
                                    <a href="TransList.jsp" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Transaction List</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="AptList.jsp" class="nav-link active">
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
                alert("Okay, continue your activity ????");
                return false;              
            }
        }
        
        var switchConfirmation = document.getElementById('switch');
        switchConfirmation.onclick = function() {
            var check = confirm("Are sure want to switch page ?");
            if (check === true) {
                return true;
            } else {
                alert("Okay, continue your activity ????");
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
                            <h1 class="m-0">Appointment List Page</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="starter.jsp">Home</a></li>
                                <li class="breadcrumb-item active">Appointment List Page</li>
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
                <h2>Appointment List</h2>
               <table>
  <tr>    
    <th>Full Name</th>
    <th>Age</th>
    <th>Appointment ID</th>
    <th>User ID</th>
    <th>Date</th>
    <th>Time</th>
    <th>Psychologist</th>
    <th>Test Result</th>
  </tr>
<%          
            String query = "SELECT * FROM appointments";

            Connection con = DbConn.initializeDatabase();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            while(rs.next()){                    
%>
  <tr>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getInt(10) %></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(5) %></td>
    <td><%= rs.getString(6) %></td>
    <td><%= rs.getString(7) %></td>
 </tr>
 <%
               }
            st.close();
            con.close();
%>
</table>
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
